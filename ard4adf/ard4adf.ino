/* ********************************************************************
 * Arduino sketch to handle an ADF4351 Synthesizer chip
 *
 * Intention:   Tool for easy generation of fixed frequencies
 *
 * First draft: 2016-08-01 by DK2KA (H.G.Thum) on arduino ProMini
 *              handwired proof of concept worked well
 *
 * Proposals:   2019-09 DF7KB, Wolf Pueschner suggested to have jumpers
 *              to set different fixed frequencies into the adf chip
 *
 * Revision:    2019-11-29 by sl0, ccaa
 *              some parts have been rewritten, defines for this and that
 *              now compiles on arduino-1.8.10
 *
 * Finally:     Have 3 jumpers to select a frequency out of a set of 8
 *              Have debugging features, like serial printstmts and
 *              and flickering arduino-led to debug without adf plugged
 *              Added an i2c connector for future use
 *
 * License:     GNU General Public License version 3 or later
 *
 * Background:  Datasheet from Analog devices: ADF4351 (Rev. A)
 * https://www.analog.com/media/en/technical-documentation/data-sheets/ADF4351.pdf
 *
 * ******************************************************************** */

// uncommend following line to have debug output on serial interface
//#define DEBUG_VIA_SERIAL

// arduino default LED
#define Led_Pin 13      // arduino LED hardwired for blinking

// 3 jumpers, so we have eight possible settings 0..7
#define X0_Pin 10       // jumper 1 is LOW or HIGH
#define X1_Pin 11       // jumper 2 is LOW or HIGH
#define X2_Pin 12       // jumper 3 is LOW or HIGH

// name arduino-(J2)      adf-pin(J1==J5)  meaning                ADF4351 datasheet page
#define CE_Pin      4   // 2  chip enable, low powers down the chip        (DS7, Pin 4)
#define LE_Pin      5   // 3  load enable, high load register selected     (DS7, Pin 3)
#define CLK_Pin     6   // 4  clock to shift in data                       (DS7, Pin 1)
#define DATA_Pin    7   // 8  Serial Data goes here                        (DS7, Pin 2)
#define LD_Pin      8   // 9  ADF LED or PLL Lock output, High OK          (DS8, Pin 25)

// useful abbreviations
#define pulseHigh(pin)  {digitalWrite(pin, 1); digitalWrite(pin, 0); }
#define pulseLow(pin)   {digitalWrite(pin, 0); digitalWrite(pin, 1); }
#define Led_On          {digitalWrite(Led_Pin, HIGH);}
#define Led_Off         {digitalWrite(Led_Pin, LOW);}
#define BLINK_ONCE      {Led_On; delay(20); Led_Off; delay(50);}

int ld_value;           // reperesents LD_Pin (for debug output)
int jumper_value;       // actual value calculated from X0 and X1 and x2
int jumper_old;         // to be compared to, if chgd, do stuff again
int jumpers;            // accumulation

int X0;                 //  v_0=1 jumper_value =  X0 * v_0 + X1 * v_1 + X2 * v_2
int X1;                 //  v_1=2    with X0,X1,X2 each [ 0 | 1 ]
int X2;                 //  v_2=4    on that Input-Pin

int read_jumpers() {
    // evaluate the three jumpers at once
    X0 = (!digitalRead(X0_Pin)) & 0x01;
    X1 = (!digitalRead(X1_Pin)) & 0x01;
    X2 = (!digitalRead(X2_Pin)) & 0x01;
    jumpers = X0  + (X1 * 2) + (X2 * 4);
#ifdef DEBUG_VIA_SERIAL
    Serial.print("Read jumpers:");
    Serial.println(jumpers);
#endif
    return jumpers;
}

void flicker(int n) {
    // possible jumper_values are { 0 .. 7 }, so we need 1 .. 8 flashes!
    int i;
    for(i=0; i <= n; i++) {
        BLINK_ONCE;
#ifdef DEBUG_VIA_SERIAL
        Serial.print("BLINK ");
        Serial.println(i);
#endif
        delay(400);
    }
}

void ADF4351_Init() {
#ifdef DEBUG_VIA_SERIAL
    Serial.println("\n\nADF4351 initializing ...");
#endif
    // set initial values on the pins
    digitalWrite(CE_Pin, HIGH);
    digitalWrite(LE_Pin, LOW);
    digitalWrite(CLK_Pin, LOW);
    digitalWrite(DATA_Pin, LOW);
}

void ADF4351_Reset() {
#ifdef DEBUG_VIA_SERIAL
    Serial.println("soft reset: ADF4351");
#endif
    pulseLow(CE_Pin);   // reset signal
    delay(1);
    pulseHigh(CLK_Pin); // clock signal
    delay(1);
    pulseHigh(LE_Pin);  // frequency update signal
#ifdef DEBUG_VIA_SERIAL
    Serial.println("soft reset: ADF4351 ready");
#endif
}

void ADF4351_SendData(int c) {
    for (int i = 7; i >= 0; i--) {      // LSB-MSB (i = 0; i >8 ; i++)
        digitalWrite(DATA_Pin, (c >> i) & 0x01);
        pulseHigh(CLK_Pin);
    }
}

void ADF4351_Frequenz(long frequenz) {
    long  y;
    y = frequenz;
    ADF4351_SendData((y >> 24) & 0xFF); //  send MSB first
    ADF4351_SendData((y >> 16) & 0xFF);
    ADF4351_SendData((y >> 8)  & 0xFF);
    ADF4351_SendData((y ) & 0xFF);      // send LSB last
    pulseHigh(LE_Pin);                  // set registers are valid
}

void set_freq_0() {                 //  calculated for 10 MHz Ref.
#ifdef DEBUG_VIA_SERIAL
    Serial.println("ADF4351 set freq 0 command");
#endif
// Q:10 Freq: 1728.001MHz
//                i=5=> 00580005
    ADF4351_Frequenz( 0x00580005);  // Reg 5
//                i=4=> 009c8024
    ADF4351_Frequenz( 0x009c8024);  // Reg 4
//                i=3=> 000004b3
    ADF4351_Frequenz( 0x000004B3);  // Reg 3
//                i=2=> 18004e42
    ADF4351_Frequenz( 0x18004e42);  // Reg 2
//                i=1=> 08001f41
    ADF4351_Frequenz( 0x08001f41);  // Reg 1
//                i=0=> 00ac92c0
    ADF4351_Frequenz( 0x00ac92c0);  // Reg 0
}

void set_freq_1() {                 //  calculated for 10 MHz Ref.
#ifdef DEBUG_VIA_SERIAL
    Serial.println("ADF4351 set freq 1 command");
#endif
//Q:10 Freq: 1748.250MHz
//                i=5=> 00580005
    ADF4351_Frequenz( 0x00580005);  // Reg 5
//                i=4=> 009c8024
    ADF4351_Frequenz( 0x009c8024);  // Reg 4
//                i=3=> 000004b3
    ADF4351_Frequenz( 0x000004B3);  // Reg 3
//                i=2=> 18004e42
    ADF4351_Frequenz( 0x18004e42);  // Reg 2
//                i=1=> 08001f41
    ADF4351_Frequenz( 0x08001f41);  // Reg 1
//                i=0=> 00ae9450
    ADF4351_Frequenz( 0x00ae9450);  // Reg 0
}

void set_freq_2() {                 //  calculated for 10 MHz Ref.
#ifdef DEBUG_VIA_SERIAL
    Serial.println("ADF4351 set freq 2 command");
#endif
//Q:10 Freq: 40.00MHz RFstep: 10.000kHz Regs:   00580005  00ec803c  000004b3  18004e42  08001f41  00800000

    ADF4351_Frequenz( 0x00580005);  // Reg 5
    ADF4351_Frequenz( 0x00ec803c);  // Reg 4
    ADF4351_Frequenz( 0x000004B3);  // Reg 3
    ADF4351_Frequenz( 0x18004e42);  // Reg 2
    ADF4351_Frequenz( 0x08001f41);  // Reg 1
    ADF4351_Frequenz( 0x00800000);  // Reg 0   40.000.000,0 Hz
}

void set_freq_3() {                 //  calculated for 10 MHz Ref.
#ifdef DEBUG_VIA_SERIAL
    Serial.println("ADF4351 set freq 3 command");
#endif
    ADF4351_Frequenz( 0x00580005);  // Reg 5
    ADF4351_Frequenz( 0x0091043C);  // Reg 4
    ADF4351_Frequenz( 0x000004B3);  // Reg 3
    ADF4351_Frequenz( 0x18015E42);  // Reg 2
    ADF4351_Frequenz( 0x08009F41);  // Reg 1
    ADF4351_Frequenz( 0x02400000);  // Reg 0   1.152.000.000,0 Hz
}

void set_freq_4() {                 //  calculated for 10 MHz Ref.
#ifdef DEBUG_VIA_SERIAL
    Serial.println("ADF4351 set freq 4 command");
#endif
    ADF4351_Frequenz( 0x00580005);  // Reg 5
    ADF4351_Frequenz( 0x0091043C);  // Reg 4
    ADF4351_Frequenz( 0x000004B3);  // Reg 3
    ADF4351_Frequenz( 0x18015E42);  // Reg 2
    ADF4351_Frequenz( 0x08008FA1);  // Reg 1
    ADF4351_Frequenz( 0x026F0000);  // Reg 0   1.246.000.000,0 Hz
}

void set_freq_5() {                 //  calculated for 10 MHz Ref.
#ifdef DEBUG_VIA_SERIAL
    Serial.println("ADF4351 set freq 5 command");
#endif
//Q:10 Freq: 1296.10MHz RFstep: 10.000kHz Regs:   00580005  009c803c  000004b3  18004e42  08001f41  008186e0
    ADF4351_Frequenz( 0x00580005);  // Reg 5
    ADF4351_Frequenz( 0x009c803c);  // Reg 4
    ADF4351_Frequenz( 0x000004B3);  // Reg 3
    ADF4351_Frequenz( 0x18004e42);  // Reg 2
    ADF4351_Frequenz( 0x08001f41);  // Reg 1
    ADF4351_Frequenz( 0x008186e0);  // Reg 0  1296.100.000,0 Hz
}

void set_freq_6() {                 //  calcd for 10 MHz Ref.
#ifdef DEBUG_VIA_SERIAL
    Serial.println("ADF4351 set freq 6 command");
#endif
//Q:10 Freq:  432.10MHz RFstep: 10.000kHz Regs:   00580005  00bc803c  000004b3  18004e42  08001f41  00ac9540
    ADF4351_Frequenz( 0x00580005);  // Reg 5
    ADF4351_Frequenz( 0x00bc803c);  // Reg 4
    ADF4351_Frequenz( 0x000004B3);  // Reg 3
    ADF4351_Frequenz( 0x18004e42);  // Reg 2
    ADF4351_Frequenz( 0x08001f41);  // Reg 1
    ADF4351_Frequenz( 0x00ac9540);  // Reg 0
}

void set_freq_7() {                 //  calcd for 10 MHz Ref.
#ifdef DEBUG_VIA_SERIAL
    Serial.println("ADF4351 set freq 7 command");
#endif
//Q:10 Freq: 2320.10MHz RFstep: 10.000kHz Regs:   00580005  008c803c  000004b3  18004e42  08001f41  00740050
    ADF4351_Frequenz( 0x00580005);  // Reg 5
    ADF4351_Frequenz( 0x008c803c);  // Reg 4
    ADF4351_Frequenz( 0x000004B3);  // Reg 3
    ADF4351_Frequenz( 0x18004e42);  // Reg 2
    ADF4351_Frequenz( 0x08001f41);  // Reg 1
    ADF4351_Frequenz( 0x00740050);  // Reg 0
}

// Arduino needs this setup function
void setup() {
#ifdef DEBUG_VIA_SERIAL
    Serial.begin(57600);
    for (int i=0; i<40; i++) Serial.println();
    Serial.println("Hard reset encountered\n\nentering setup for Arduino-for-ADF4351");
#endif
    pinMode(Led_Pin, OUTPUT);       // LED Arduino
    pinMode(LD_Pin, INPUT_PULLUP);  // PLL valid, high == OK
    pinMode(CE_Pin, OUTPUT);        // chip enable
    pinMode(LE_Pin, OUTPUT);        // load enable
    pinMode(CLK_Pin, OUTPUT);       // clock
    pinMode(DATA_Pin, OUTPUT);      // data

    pinMode(X0_Pin, INPUT_PULLUP);  //  selector 2**0
    pinMode(X1_Pin, INPUT_PULLUP);  //  selector 2**1
    pinMode(X2_Pin, INPUT_PULLUP);  //  selector 2**2
#ifdef DEBUG_VIA_SERIAL
    Serial.println("All I/O modes are set now");
#endif

    ADF4351_Reset();
    delay(10);                      // spend time to relax from that shock
    ADF4351_Init();
    delay(500);                     // spend time for his initial work
    jumper_value = read_jumpers();  // read the jumper setting
    jumper_old = 10;                // force evaluation of the jumpers on every hard reset
#ifdef DEBUG_VIA_SERIAL
    Serial.println("Arduino-for-ADF4351 setup ready, start to loop");
#endif
}

//  Main application loop follows
void loop()
{
    jumper_value = read_jumpers();  // read the jumper setting
    flicker(jumper_value);          // flash the led at countable speed

    // LD_Pin low means PLL fault, ==> try to reset the chip
    ld_value = digitalRead(LD_Pin);
#ifdef DEBUG_VIA_SERIAL
    Serial.print("LD:");
    Serial.println(ld_value, HEX);
#endif
    if (!ld_value) {
#ifdef DEBUG_VIA_SERIAL
    Serial.println("\nfound low voltage on LD_Pin, resetting ard4351");
#endif
        Led_On
        delay(1000);
        ADF4351_Reset();
        delay(10);
        ADF4351_Init();
        delay(500);
        jumper_old = 10;  // force evaluating jumpers on every reset
    }

    if (jumper_value == jumper_old) {
#ifdef DEBUG_VIA_SERIAL
    Serial.println("loop, no change");
#endif
        delay(3000);                // do nothing for a three seconds
    } else {
        jumper_old = jumper_value;  // but do it only once!
#ifdef DEBUG_VIA_SERIAL
    Serial.print("jumpers read: ");
    Serial.println(jumper_value, HEX);
#endif
        switch(jumper_value) {
            case 0: set_freq_0();   // 1728.000 MHz - 10MHz Ref.
                    break;
            case 1: set_freq_1();   // 1748.250 MHz - 10MHz Ref.
                    break;
            case 2: set_freq_2();   //  144.0 MHz  - 10MHz Ref.
                    break;
            case 3: set_freq_3();   // 1152.0 MHz  - 10MHz Ref.
                    break;
            case 4: set_freq_4();   // 1246.0 MHz  - 10MHz Ref.
                    break;
            case 5: set_freq_5();   //  180.0 MHz  - 10MHz Ref.
                    break;
            case 6: set_freq_6();   //  432.1 MHz  - 10MHz Ref.
                    break;
            case 7: set_freq_7();   // 2320.1 MHz  - 10MHz Ref.
                    break;
        }
    }
}
// EoF
