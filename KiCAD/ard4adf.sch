EESchema Schematic File Version 4
LIBS:w-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "NanoCTRL4AD4351"
Date "2019-10-30"
Rev "v02"
Comp ""
Comment1 "Have fun!"
Comment2 "https://oshpark.com/shared_projects/7aTWM54V"
Comment3 "PCB may be found at:"
Comment4 ""
$EndDescr
Text Notes 3950 5250 0    50   ~ 0
D10 = X0
Text Notes 3950 5350 0    50   ~ 0
D11 = X1
Text Notes 3950 5450 0    50   ~ 0
D12 = X2
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J2
U 1 1 5D8637E8
P 3550 5350
F 0 "J2" H 3600 5350 50  0000 C CNN
F 1 "Conn_02x03_Odd_Even" H 3800 5100 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 3550 5350 50  0001 C CNN
F 3 "~" H 3550 5350 50  0001 C CNN
	1    3550 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 5250 3200 5250
Wire Wire Line
	3200 5250 3200 5350
Wire Wire Line
	3200 5450 3350 5450
Wire Wire Line
	3350 5350 3200 5350
Connection ~ 3200 5350
Wire Wire Line
	3200 5350 3200 5450
$Comp
L power:GND #PWR01
U 1 1 5D86BDBA
P 3200 6650
F 0 "#PWR01" H 3200 6400 50  0001 C CNN
F 1 "GND" H 3205 6477 50  0000 C CNN
F 2 "" H 3200 6650 50  0001 C CNN
F 3 "" H 3200 6650 50  0001 C CNN
	1    3200 6650
	1    0    0    -1  
$EndComp
Connection ~ 3200 5450
Text Notes 1750 7300 0    50   ~ 0
female
$Comp
L Device:R R2
U 1 1 5D87CEEF
P 1050 6900
F 0 "R2" V 843 6900 50  0000 C CNN
F 1 "1k5" V 934 6900 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 980 6900 50  0001 C CNN
F 3 "~" H 1050 6900 50  0001 C CNN
	1    1050 6900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5D87EFF5
P 1050 7200
F 0 "R1" V 843 7200 50  0000 C CNN
F 1 "3k3" V 934 7200 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 980 7200 50  0001 C CNN
F 3 "~" H 1050 7200 50  0001 C CNN
	1    1050 7200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5D87F3C8
P 1050 7350
F 0 "#PWR03" H 1050 7100 50  0001 C CNN
F 1 "GND" H 1055 7177 50  0000 C CNN
F 2 "" H 1050 7350 50  0001 C CNN
F 3 "" H 1050 7350 50  0001 C CNN
	1    1050 7350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5D8A679F
P 2450 6400
F 0 "R4" V 2243 6400 50  0000 C CNN
F 1 "1k5" V 2334 6400 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 2380 6400 50  0001 C CNN
F 3 "~" H 2450 6400 50  0001 C CNN
	1    2450 6400
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5D8A67A9
P 2150 6400
F 0 "R3" V 1943 6400 50  0000 C CNN
F 1 "3k3" V 2034 6400 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 2080 6400 50  0001 C CNN
F 3 "~" H 2150 6400 50  0001 C CNN
	1    2150 6400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5D8A67B3
P 2000 6400
F 0 "#PWR04" H 2000 6150 50  0001 C CNN
F 1 "GND" H 2005 6227 50  0000 C CNN
F 2 "" H 2000 6400 50  0001 C CNN
F 3 "" H 2000 6400 50  0001 C CNN
	1    2000 6400
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 5D8D3BC9
P 1450 5000
F 0 "R6" V 1243 5000 50  0000 C CNN
F 1 "1k5" V 1334 5000 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 1380 5000 50  0001 C CNN
F 3 "~" H 1450 5000 50  0001 C CNN
	1    1450 5000
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 5D8D3BD3
P 1150 5000
F 0 "R5" V 943 5000 50  0000 C CNN
F 1 "3k3" V 1034 5000 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 1080 5000 50  0001 C CNN
F 3 "~" H 1150 5000 50  0001 C CNN
	1    1150 5000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5D8D3BDD
P 1000 5000
F 0 "#PWR05" H 1000 4750 50  0001 C CNN
F 1 "GND" H 1005 4827 50  0000 C CNN
F 2 "" H 1000 5000 50  0001 C CNN
F 3 "" H 1000 5000 50  0001 C CNN
	1    1000 5000
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 5D8F384C
P 2150 4650
F 0 "R8" V 1943 4650 50  0000 C CNN
F 1 "1k5" V 2034 4650 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 2080 4650 50  0001 C CNN
F 3 "~" H 2150 4650 50  0001 C CNN
	1    2150 4650
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 5D8F3856
P 1850 4650
F 0 "R7" V 1643 4650 50  0000 C CNN
F 1 "3k3" V 1734 4650 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 1780 4650 50  0001 C CNN
F 3 "~" H 1850 4650 50  0001 C CNN
	1    1850 4650
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5D8F3860
P 1700 4650
F 0 "#PWR06" H 1700 4400 50  0001 C CNN
F 1 "GND" H 1705 4477 50  0000 C CNN
F 2 "" H 1700 4650 50  0001 C CNN
F 3 "" H 1700 4650 50  0001 C CNN
	1    1700 4650
	0    1    1    0   
$EndComp
Connection ~ 2000 4650
Text Notes 4150 6400 0    50   ~ 0
Arduino-plug-onto-adf4351
Text Notes 3400 5200 3    50   ~ 0
4 2 1
Text Notes 2100 6750 0    50   ~ 0
DAT
Text Notes 1600 6950 2    50   ~ 0
CE
Text Notes 1600 7150 2    50   ~ 0
LE
Text Notes 2250 6850 2    50   ~ 0
CLK
Text Notes 1650 7050 2    50   ~ 0
GND
Text Notes 2100 6950 0    50   ~ 0
MUX
Text Notes 2250 7150 2    50   ~ 0
PDR
Text Notes 1500 6750 0    50   ~ 0
GND
$Comp
L Device:CP C1
U 1 1 5D8F43A4
P 10200 1450
F 0 "C1" H 10315 1496 50  0000 L CNN
F 1 "47uF" H 10315 1405 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 10238 1300 50  0001 C CNN
F 3 "~" H 10200 1450 50  0001 C CNN
	1    10200 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5D8FC4B5
P 10200 1600
F 0 "#PWR0101" H 10200 1350 50  0001 C CNN
F 1 "GND" H 10205 1427 50  0000 C CNN
F 2 "" H 10200 1600 50  0001 C CNN
F 3 "" H 10200 1600 50  0001 C CNN
	1    10200 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	10550 1400 10550 1600
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5D87A91B
P 10400 1300
F 0 "#FLG0101" H 10400 1375 50  0001 C CNN
F 1 "PWR_FLAG" H 10400 1473 50  0000 C CNN
F 2 "" H 10400 1300 50  0001 C CNN
F 3 "~" H 10400 1300 50  0001 C CNN
	1    10400 1300
	1    0    0    -1  
$EndComp
Connection ~ 2300 6400
Wire Wire Line
	2300 6400 2300 6750
$Comp
L MCU_Module:Arduino_Nano_v3.x A1
U 1 1 5D928282
P 5600 4850
F 0 "A1" H 5600 4450 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" V 5600 4900 50  0000 C CNN
F 2 "Module:Arduino_Nano_WithMountingHoles" H 5600 5950 50  0000 C CNN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" V 6300 4550 50  0000 C CNN
	1    5600 4850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5D9BC4C5
P 5700 5850
F 0 "#PWR0102" H 5700 5600 50  0001 C CNN
F 1 "GND" H 5705 5677 50  0000 C CNN
F 2 "" H 5700 5850 50  0001 C CNN
F 3 "" H 5700 5850 50  0001 C CNN
	1    5700 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 4650 2000 6100
Wire Wire Line
	2300 4650 5100 4650
Wire Wire Line
	2350 5000 2350 4750
Wire Wire Line
	2350 4750 5100 4750
Wire Wire Line
	2450 4850 2450 5150
Wire Wire Line
	2450 4850 5100 4850
Wire Wire Line
	1050 5150 1050 6750
Wire Wire Line
	2600 4950 2600 6400
Wire Wire Line
	2600 4950 5100 4950
Wire Wire Line
	2700 5050 5100 5050
Wire Wire Line
	3200 6650 3200 5450
Connection ~ 3200 6650
Wire Wire Line
	3850 5250 5100 5250
Wire Wire Line
	3850 5450 5100 5450
$Comp
L Connector_Generic:Conn_02x05_Top_Bottom J3
U 1 1 5D86D1A9
P 1800 6950
F 0 "J3" H 1850 6950 50  0000 C CNN
F 1 "Conn_02x05_Top_Bottom" H 1950 6450 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x05_P2.54mm_Vertical" H 1800 6950 50  0001 C CNN
F 3 "~" H 1800 6950 50  0001 C CNN
	1    1800 6950
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5D9ACD51
P 10550 1600
F 0 "#FLG0102" H 10550 1675 50  0001 C CNN
F 1 "PWR_FLAG" H 10550 1773 50  0000 C CNN
F 2 "" H 10550 1600 50  0001 C CNN
F 3 "~" H 10550 1600 50  0001 C CNN
	1    10550 1600
	-1   0    0    1   
$EndComp
$Comp
L ADM7150ARDZ-3.3:ADM7150ARDZ-3.3 IC2
U 1 1 5D9E2D2B
P 7550 2300
F 0 "IC2" H 8250 2565 50  0000 C CNN
F 1 "ADM7150ARDZ-3.3" H 8250 2474 50  0000 C CNN
F 2 "SOIC127P600X175-9N" H 8800 2400 50  0001 L CNN
F 3 "http://docs-emea.rs-online.com/webdocs/12c1/0900766b812c18ef.pdf" H 8800 2300 50  0001 L CNN
F 4 "RF Linear Regulator 3.3V 800mA SOIC8EP Analog Devices ADM7150 ADM7150ARDZ-3.3, Single Linear Voltage Regulator, 800mA 3.3 V, +/-1%, 8-Pin SOIC" H 8800 2200 50  0001 L CNN "Description"
F 5 "1.75" H 8800 2100 50  0001 L CNN "Height"
F 6 "Analog Devices" H 8800 2000 50  0001 L CNN "Manufacturer_Name"
F 7 "ADM7150ARDZ-3.3" H 8800 1900 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "584-ADM7150ARDZ-3.3" H 8800 1800 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.com/Search/Refine.aspx?Keyword=584-ADM7150ARDZ-3.3" H 8800 1700 50  0001 L CNN "Mouser Price/Stock"
F 10 "7989944P" H 8800 1600 50  0001 L CNN "RS Part Number"
F 11 "http://uk.rs-online.com/web/p/products/7989944P" H 8800 1500 50  0001 L CNN "RS Price/Stock"
	1    7550 2300
	1    0    0    -1  
$EndComp
$Comp
L ADM7150ARDZ-5.0:ADM7150ARDZ-5.0 IC1
U 1 1 5D9E8ABE
P 7550 1000
F 0 "IC1" H 8250 1265 50  0000 C CNN
F 1 "ADM7150ARDZ-5.0" H 8250 1174 50  0000 C CNN
F 2 "SOIC127P600X175-9N" H 8800 1100 50  0001 L CNN
F 3 "http://www.farnell.com/datasheets/2252893.pdf" H 8800 1000 50  0001 L CNN
F 4 "RF Linear Regulator 5V 800mA SOIC8EP Analog Devices ADM7150 ADM7150ARDZ-5.0, Single Linear Voltage Regulator, 800mA 5 V, +/-1%, 8-Pin SOIC" H 8800 900 50  0001 L CNN "Description"
F 5 "1.75" H 8800 800 50  0001 L CNN "Height"
F 6 "Analog Devices" H 8800 700 50  0001 L CNN "Manufacturer_Name"
F 7 "ADM7150ARDZ-5.0" H 8800 600 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "584-ADM7150ARDZ-5.0" H 8800 500 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.com/Search/Refine.aspx?Keyword=584-ADM7150ARDZ-5.0" H 8800 400 50  0001 L CNN "Mouser Price/Stock"
F 10 "7989947P" H 8800 300 50  0001 L CNN "RS Part Number"
F 11 "http://uk.rs-online.com/web/p/products/7989947P" H 8800 200 50  0001 L CNN "RS Price/Stock"
	1    7550 1000
	1    0    0    -1  
$EndComp
Connection ~ 10200 1300
Connection ~ 10400 1300
Wire Wire Line
	10400 1300 10550 1300
Wire Wire Line
	10200 1300 10400 1300
Wire Wire Line
	10200 1600 10550 1600
Connection ~ 10550 1600
Wire Wire Line
	8950 1000 9100 1000
Wire Wire Line
	9850 1000 9850 1300
Wire Wire Line
	9850 1300 10200 1300
Wire Wire Line
	8950 1100 9100 1100
Wire Wire Line
	9100 1100 9100 1000
Connection ~ 9100 1000
Wire Wire Line
	9100 1000 9450 1000
Wire Wire Line
	9850 1600 10200 1600
Connection ~ 10200 1600
Wire Wire Line
	9850 1600 9850 1900
Wire Wire Line
	9850 1900 9100 1900
Wire Wire Line
	8950 1200 9100 1200
Wire Wire Line
	9100 1200 9100 1300
Wire Wire Line
	9100 1300 8950 1300
$Comp
L Device:CP C58
U 1 1 5D9E27E4
P 9100 1750
F 0 "C58" H 9215 1796 50  0000 L CNN
F 1 "1uF" H 9215 1705 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_3x5.3" H 9138 1600 50  0001 C CNN
F 3 "~" H 9100 1750 50  0001 C CNN
	1    9100 1750
	1    0    0    -1  
$EndComp
Connection ~ 9100 1900
Wire Wire Line
	9100 1300 9100 1600
Connection ~ 9100 1300
Wire Wire Line
	7550 1300 7550 1900
Wire Wire Line
	7550 1900 8250 1900
Connection ~ 6850 1100
Connection ~ 7550 1900
Wire Wire Line
	6850 1100 7250 1100
Wire Wire Line
	7250 1100 7550 1100
Connection ~ 7250 1100
$Comp
L Device:CP C56
U 1 1 5D9EBF87
P 6850 1750
F 0 "C56" H 6965 1796 50  0000 L CNN
F 1 "47uF" H 6965 1705 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 6888 1600 50  0001 C CNN
F 3 "~" H 6850 1750 50  0001 C CNN
	1    6850 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 1600 6850 1100
Connection ~ 7250 1900
Wire Wire Line
	7250 1900 6850 1900
Wire Wire Line
	7250 1900 7550 1900
Wire Wire Line
	7250 1600 7250 1100
$Comp
L Device:C C57
U 1 1 5D9E7239
P 7250 1750
F 0 "C57" H 7365 1796 50  0000 L CNN
F 1 "10nF" H 7365 1705 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 7288 1600 50  0001 C CNN
F 3 "~" H 7250 1750 50  0001 C CNN
	1    7250 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C55
U 1 1 5D9EFA87
P 6450 1750
F 0 "C55" H 6565 1796 50  0000 L CNN
F 1 "10nF" H 6565 1705 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 6488 1600 50  0001 C CNN
F 3 "~" H 6450 1750 50  0001 C CNN
	1    6450 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C54
U 1 1 5D9EFDAB
P 6050 1750
F 0 "C54" H 6165 1796 50  0000 L CNN
F 1 "47uF" H 6165 1705 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 6088 1600 50  0001 C CNN
F 3 "~" H 6050 1750 50  0001 C CNN
	1    6050 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 1900 6450 1900
Connection ~ 6850 1900
Connection ~ 6450 1900
Wire Wire Line
	6450 1900 6850 1900
Wire Wire Line
	7550 1200 6450 1200
Wire Wire Line
	6050 1200 6050 1600
Wire Wire Line
	6450 1600 6450 1200
Connection ~ 6450 1200
Wire Wire Line
	6450 1200 6050 1200
$Comp
L Device:C C53
U 1 1 5D9F5BD5
P 5650 1750
F 0 "C53" H 5765 1796 50  0000 L CNN
F 1 "10nF" H 5765 1705 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 5688 1600 50  0001 C CNN
F 3 "~" H 5650 1750 50  0001 C CNN
	1    5650 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 1000 5650 1000
Wire Wire Line
	5650 1000 5650 1600
Wire Wire Line
	5650 1900 6050 1900
Connection ~ 6050 1900
Wire Wire Line
	9450 1000 9450 2300
Wire Wire Line
	9450 2300 9100 2300
Connection ~ 9450 1000
Wire Wire Line
	9450 1000 9850 1000
Wire Wire Line
	8950 2400 9100 2400
Wire Wire Line
	9100 2400 9100 2300
Connection ~ 9100 2300
Wire Wire Line
	9100 2300 8950 2300
Wire Wire Line
	9850 1900 9850 3200
Wire Wire Line
	9850 3200 9100 3200
Connection ~ 9850 1900
$Comp
L Device:C C39
U 1 1 5D9FF681
P 5650 3050
F 0 "C39" H 5765 3096 50  0000 L CNN
F 1 "10nF" H 5765 3005 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 5688 2900 50  0001 C CNN
F 3 "~" H 5650 3050 50  0001 C CNN
	1    5650 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C30
U 1 1 5D9FFB1F
P 6050 3050
F 0 "C30" H 6165 3096 50  0000 L CNN
F 1 "47uF" H 6165 3005 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 6088 2900 50  0001 C CNN
F 3 "~" H 6050 3050 50  0001 C CNN
	1    6050 3050
	1    0    0    -1  
$EndComp
Connection ~ 6050 3200
Wire Wire Line
	6050 3200 5650 3200
$Comp
L Device:C C31
U 1 1 5D9FFF97
P 6450 3050
F 0 "C31" H 6565 3096 50  0000 L CNN
F 1 "10nF" H 6565 3005 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 6488 2900 50  0001 C CNN
F 3 "~" H 6450 3050 50  0001 C CNN
	1    6450 3050
	1    0    0    -1  
$EndComp
Connection ~ 6450 3200
Wire Wire Line
	6450 3200 6050 3200
$Comp
L Device:CP C32
U 1 1 5DA0041D
P 6850 3050
F 0 "C32" H 6965 3096 50  0000 L CNN
F 1 "47uF" H 6965 3005 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 6888 2900 50  0001 C CNN
F 3 "~" H 6850 3050 50  0001 C CNN
	1    6850 3050
	1    0    0    -1  
$EndComp
Connection ~ 6850 3200
Wire Wire Line
	6850 3200 6450 3200
$Comp
L Device:C C33
U 1 1 5DA0089F
P 7250 3050
F 0 "C33" H 7365 3096 50  0000 L CNN
F 1 "10nF" H 7365 3005 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 7288 2900 50  0001 C CNN
F 3 "~" H 7250 3050 50  0001 C CNN
	1    7250 3050
	1    0    0    -1  
$EndComp
Connection ~ 7250 3200
Wire Wire Line
	7250 3200 6850 3200
Wire Wire Line
	7550 2300 5650 2300
Wire Wire Line
	5650 2300 5650 2900
Wire Wire Line
	7550 2400 7250 2400
Wire Wire Line
	7550 2600 7550 3200
Connection ~ 7550 3200
Wire Wire Line
	7550 3200 7250 3200
Wire Wire Line
	6850 2900 6850 2400
Connection ~ 6850 2400
Wire Wire Line
	7250 2400 7250 2900
Connection ~ 7250 2400
Wire Wire Line
	7250 2400 6850 2400
Wire Wire Line
	6450 2900 6450 2500
Wire Wire Line
	6450 2500 7550 2500
Wire Wire Line
	6050 2900 6050 2500
Wire Wire Line
	6050 2500 6450 2500
Connection ~ 6450 2500
$Comp
L Device:CP C34
U 1 1 5DA12AD9
P 9100 3050
F 0 "C34" H 9215 3096 50  0000 L CNN
F 1 "1uF" H 9215 3005 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_3x5.3" H 9138 2900 50  0001 C CNN
F 3 "~" H 9100 3050 50  0001 C CNN
	1    9100 3050
	1    0    0    -1  
$EndComp
Connection ~ 9100 3200
Wire Wire Line
	9100 3200 8250 3200
Wire Wire Line
	8950 2600 9100 2600
Wire Wire Line
	9100 2600 9100 2900
Wire Wire Line
	8950 2500 9100 2500
Wire Wire Line
	9100 2500 9100 2600
Connection ~ 9100 2600
Wire Wire Line
	5100 5350 3850 5350
Wire Wire Line
	5600 5850 5700 5850
Connection ~ 5700 5850
Wire Wire Line
	5800 3450 5800 3850
Wire Wire Line
	4750 3450 5800 3450
Wire Wire Line
	8250 1800 8250 1900
Connection ~ 8250 1900
Wire Wire Line
	8250 1900 9100 1900
Wire Wire Line
	8250 3100 8250 3200
Connection ~ 8250 3200
Wire Wire Line
	8250 3200 7550 3200
Wire Wire Line
	4750 1100 4750 3450
Wire Wire Line
	4750 1100 6850 1100
Text Notes 1400 6850 0    50   ~ 0
+3.3V
Wire Wire Line
	2900 2400 5350 2400
NoConn ~ 5100 4250
NoConn ~ 5100 5550
NoConn ~ 5100 5150
NoConn ~ 5100 4550
NoConn ~ 5100 4450
NoConn ~ 5100 4350
NoConn ~ 6100 4850
NoConn ~ 6100 4950
NoConn ~ 6100 5050
NoConn ~ 6100 5150
NoConn ~ 6100 5450
NoConn ~ 6100 5550
NoConn ~ 6100 4650
NoConn ~ 6100 4350
NoConn ~ 6100 4250
NoConn ~ 5500 3850
NoConn ~ 5700 3850
Wire Wire Line
	2100 6750 2300 6750
Wire Wire Line
	1500 6650 1500 6750
Wire Wire Line
	1500 7050 1600 7050
Wire Wire Line
	1500 6750 1600 6750
Connection ~ 1500 6750
Wire Wire Line
	1500 6750 1500 7050
Wire Wire Line
	2900 2400 2900 6550
Wire Wire Line
	1200 6100 1200 6950
Wire Wire Line
	1200 6950 1600 6950
Wire Wire Line
	1200 6100 2000 6100
Wire Wire Line
	1600 6850 1400 6850
Wire Wire Line
	1400 6850 1400 6550
Wire Wire Line
	1400 6550 2900 6550
Wire Wire Line
	1050 5150 2450 5150
Wire Wire Line
	1050 7050 1200 7050
Wire Wire Line
	1200 7050 1200 7350
Wire Wire Line
	1200 7350 2300 7350
Wire Wire Line
	2300 7350 2300 6850
Wire Wire Line
	2300 6850 2100 6850
Connection ~ 1050 7050
Connection ~ 1300 5000
Wire Wire Line
	1600 5000 2350 5000
Wire Wire Line
	1300 7150 1600 7150
Wire Wire Line
	1300 5000 1300 7150
Wire Wire Line
	1500 6650 3200 6650
Text Notes 2200 7050 2    50   ~ 0
LD
NoConn ~ 2100 7150
Wire Wire Line
	2100 7050 2700 7050
Wire Wire Line
	2700 5050 2700 7050
NoConn ~ 2100 6950
$Comp
L Connector:Conn_01x02_Male J1
U 1 1 5DB130E3
P 10750 1400
F 0 "J1" H 10750 1350 50  0000 R CNN
F 1 "Conn_01x02_Male" V 10550 1750 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 10750 1400 50  0001 C CNN
F 3 "~" H 10750 1400 50  0001 C CNN
	1    10750 1400
	-1   0    0    1   
$EndComp
$Comp
L Device:C C2
U 1 1 5DA1CB08
P 9850 1450
F 0 "C2" H 9965 1496 50  0000 L CNN
F 1 "10nF" H 9900 1350 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 9888 1300 50  0001 C CNN
F 3 "~" H 9850 1450 50  0001 C CNN
	1    9850 1450
	1    0    0    -1  
$EndComp
Connection ~ 9850 1300
Connection ~ 9850 1600
$Comp
L Connector:Conn_01x04_Male J4
U 1 1 5DA8A18A
P 7300 5350
F 0 "J4" H 7450 5050 50  0000 R CNN
F 1 "Conn_01x04_Male" H 7600 5600 50  0000 R CNN
F 2 "Connector_JST:JST_PH_B4B-PH-K_1x04_P2.00mm_Vertical" H 7300 5350 50  0001 C CNN
F 3 "~" H 7300 5350 50  0001 C CNN
	1    7300 5350
	1    0    0    1   
$EndComp
Text Notes 7100 5200 0    50   ~ 0
SCL
Text Notes 7100 5300 0    50   ~ 0
SDA
$Comp
L power:GND #PWR0103
U 1 1 5DACFFCB
P 7700 5450
F 0 "#PWR0103" H 7700 5200 50  0001 C CNN
F 1 "GND" H 7705 5277 50  0000 C CNN
F 2 "" H 7700 5450 50  0001 C CNN
F 3 "" H 7700 5450 50  0001 C CNN
	1    7700 5450
	1    0    0    -1  
$EndComp
Connection ~ 5800 3450
Text Notes 7100 5400 0    50   ~ 0
+5V
Wire Wire Line
	6800 4900 7500 4900
Wire Wire Line
	7500 4900 7500 5150
Wire Wire Line
	6700 5250 6700 4800
Wire Wire Line
	6700 4800 7600 4800
Wire Wire Line
	7600 4800 7600 5250
Wire Wire Line
	7600 5250 7500 5250
Wire Wire Line
	7700 5350 7500 5350
Wire Wire Line
	5800 3450 7700 3450
Wire Wire Line
	7500 5450 7700 5450
Text Notes 7100 5500 0    50   ~ 0
GND
Wire Wire Line
	6800 4900 6800 5350
Wire Wire Line
	6800 5350 6100 5350
Wire Wire Line
	6700 5250 6100 5250
$Comp
L power:GND #PWR07
U 1 1 5DB61CD1
P 8550 4900
F 0 "#PWR07" H 8550 4650 50  0001 C CNN
F 1 "GND" H 8555 4727 50  0000 C CNN
F 2 "" H 8550 4900 50  0001 C CNN
F 3 "" H 8550 4900 50  0001 C CNN
	1    8550 4900
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J5
U 1 1 5DB60C69
P 8750 4900
F 0 "J5" H 8750 4850 50  0000 R CNN
F 1 "Conn_01x02_Male" H 9100 4650 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 8750 4900 50  0001 C CNN
F 3 "~" H 8750 4900 50  0001 C CNN
	1    8750 4900
	-1   0    0    1   
$EndComp
Wire Wire Line
	8550 4800 7700 4800
Connection ~ 7700 4800
Wire Wire Line
	7700 4800 7700 5350
Wire Wire Line
	7700 3450 7700 4800
$Comp
L power:GND #PWR02
U 1 1 5DBBCEBD
P 8550 4100
F 0 "#PWR02" H 8550 3850 50  0001 C CNN
F 1 "GND" H 8555 3927 50  0000 C CNN
F 2 "" H 8550 4100 50  0001 C CNN
F 3 "" H 8550 4100 50  0001 C CNN
	1    8550 4100
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J6
U 1 1 5DBBCEC3
P 8750 4100
F 0 "J6" H 8750 4050 50  0000 R CNN
F 1 "Conn_01x02_Male" H 9100 3850 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 8750 4100 50  0001 C CNN
F 3 "~" H 8750 4100 50  0001 C CNN
	1    8750 4100
	-1   0    0    1   
$EndComp
Wire Wire Line
	5350 2400 5350 3350
Wire Wire Line
	5350 3350 7800 3350
Wire Wire Line
	7800 3350 7800 4000
Wire Wire Line
	7800 4000 8550 4000
Connection ~ 5350 2400
Wire Wire Line
	5350 2400 6850 2400
$EndSCHEMATC