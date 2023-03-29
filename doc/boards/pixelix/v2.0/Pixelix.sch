EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title "Pixelix"
Date "2022-05-27"
Rev "2.0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Notes Line
	750  1000 2750 1000
Wire Notes Line
	2750 1000 2750 2350
Wire Notes Line
	2750 2350 750  2350
Wire Notes Line
	750  2350 750  1000
Wire Notes Line
	650  3500 2800 3500
Wire Notes Line
	2800 3500 2800 4850
Wire Notes Line
	2800 4850 650  4850
Wire Notes Line
	650  4850 650  3500
Text Notes 750  950  0    50   ~ 0
LDR GL5528
Text Notes 650  3450 0    50   ~ 0
Level Shifter
Wire Notes Line
	650  5450 5650 5450
Wire Notes Line
	5650 5450 5650 7450
Wire Notes Line
	5650 7450 650  7450
Wire Notes Line
	650  7450 650  5450
Text Notes 650  5400 0    50   ~ 0
Power Supply
Wire Notes Line
	3400 3500 5400 3500
Wire Notes Line
	5400 3500 5400 4850
Wire Notes Line
	5400 4850 3400 4850
Wire Notes Line
	3400 4850 3400 3500
Text Notes 3400 3450 0    50   ~ 0
WS2812B LED Matrix
Wire Notes Line
	6000 3500 8000 3500
Wire Notes Line
	8000 3500 8000 4850
Wire Notes Line
	8000 4850 6000 4850
Wire Notes Line
	6000 4850 6000 3500
Text Notes 6000 3450 0    50   ~ 0
User Button
Wire Notes Line
	8750 3500 10750 3500
Wire Notes Line
	10750 3500 10750 4850
Wire Notes Line
	10750 4850 8750 4850
Wire Notes Line
	8750 4850 8750 3500
Text Notes 8750 3450 0    50   ~ 0
Reset Button
Wire Notes Line
	7950 5100 10750 5100
Wire Notes Line
	10750 6450 10750 5100
Wire Notes Line
	10750 6450 7950 6450
Wire Notes Line
	7950 6450 7950 5100
Text Notes 8000 5050 0    50   ~ 0
JTAG
Wire Notes Line
	8750 850  10750 850 
Wire Notes Line
	10750 850  10750 1850
Wire Notes Line
	10750 1850 8750 1850
Wire Notes Line
	8750 1850 8750 850 
Text Notes 8750 800  0    50   ~ 0
I2C
$Comp
L Device:R R2
U 1 1 623255C6
P 1450 1650
F 0 "R2" H 1520 1696 50  0000 L CNN
F 1 "1k" H 1520 1605 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1380 1650 50  0001 C CNN
F 3 "~" H 1450 1650 50  0001 C CNN
	1    1450 1650
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J6
U 1 1 623282AA
P 10100 1100
F 0 "J6" H 10180 1092 50  0000 L CNN
F 1 "Conn_01x02" H 10180 1001 50  0000 L CNN
F 2 "footprints:66200211022" H 10100 1100 50  0001 C CNN
F 3 "~" H 10100 1100 50  0001 C CNN
	1    10100 1100
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 62329096
P 950 1450
F 0 "J1" H 868 1125 50  0000 C CNN
F 1 "Conn_01x02" H 868 1216 50  0000 C CNN
F 2 "footprints:66200211022" H 950 1450 50  0001 C CNN
F 3 "~" H 950 1450 50  0001 C CNN
	1    950  1450
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J8
U 1 1 62329B3C
P 10200 4100
F 0 "J8" H 10280 4092 50  0000 L CNN
F 1 "Conn_01x02" H 10280 4001 50  0000 L CNN
F 2 "footprints:66200211022" H 10200 4100 50  0001 C CNN
F 3 "~" H 10200 4100 50  0001 C CNN
	1    10200 4100
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J4
U 1 1 6232A32B
P 7450 4100
F 0 "J4" H 7530 4092 50  0000 L CNN
F 1 "Conn_01x02" H 7530 4001 50  0000 L CNN
F 2 "footprints:66200211022" H 7450 4100 50  0001 C CNN
F 3 "~" H 7450 4100 50  0001 C CNN
	1    7450 4100
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J3
U 1 1 6232AE75
P 4850 4100
F 0 "J3" H 4930 4142 50  0000 L CNN
F 1 "Conn_01x03" H 4930 4051 50  0000 L CNN
F 2 "footprints:66200311022" H 4850 4100 50  0001 C CNN
F 3 "~" H 4850 4100 50  0001 C CNN
	1    4850 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 1450 1450 1450
Wire Wire Line
	1450 1450 1450 1500
Wire Wire Line
	1450 1450 2250 1450
Connection ~ 1450 1450
Wire Wire Line
	1450 1800 1450 1900
$Comp
L power:GND #PWR04
U 1 1 624FF9F2
P 1450 1900
F 0 "#PWR04" H 1450 1650 50  0001 C CNN
F 1 "GND" H 1455 1727 50  0000 C CNN
F 2 "" H 1450 1900 50  0001 C CNN
F 3 "" H 1450 1900 50  0001 C CNN
	1    1450 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 1350 1450 1350
Wire Wire Line
	1450 1350 1450 1250
$Comp
L power:+3V3 #PWR03
U 1 1 625004ED
P 1450 1250
F 0 "#PWR03" H 1450 1100 50  0001 C CNN
F 1 "+3V3" H 1465 1423 50  0000 C CNN
F 2 "" H 1450 1250 50  0001 C CNN
F 3 "" H 1450 1250 50  0001 C CNN
	1    1450 1250
	1    0    0    -1  
$EndComp
Text Label 2250 1450 2    50   ~ 0
LDR-ANALOG-IN
Wire Wire Line
	9900 1100 9100 1100
Wire Wire Line
	9900 1200 9100 1200
Text Label 9100 1100 0    50   ~ 0
SCL
Text Label 9100 1200 0    50   ~ 0
SDA
$Comp
L Device:R R1
U 1 1 62502F0D
P 1350 4150
F 0 "R1" H 1420 4196 50  0000 L CNN
F 1 "10k" H 1420 4105 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1280 4150 50  0001 C CNN
F 3 "~" H 1350 4150 50  0001 C CNN
	1    1350 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 62503836
P 2050 4150
F 0 "R3" H 2120 4196 50  0000 L CNN
F 1 "1.2k" H 2120 4105 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1980 4150 50  0001 C CNN
F 3 "~" H 2050 4150 50  0001 C CNN
	1    2050 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NMOS_GSD Q1
U 1 1 62503D3D
P 1700 4400
F 0 "Q1" V 1949 4400 50  0000 C CNN
F 1 "NMOS_GSD_BSS138" V 2040 4400 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 1900 4500 50  0001 C CNN
F 3 "https://www.mouser.de/datasheet/2/308/1/BSS138_D-2310374.pdf" H 1700 4400 50  0001 C CNN
	1    1700 4400
	0    1    1    0   
$EndComp
Wire Wire Line
	1350 4300 1350 4500
Wire Wire Line
	1900 4500 2050 4500
Wire Wire Line
	2050 4500 2050 4300
Wire Wire Line
	2050 4000 2050 3750
Wire Wire Line
	1700 4200 1700 3900
Wire Wire Line
	1350 3900 1350 4000
Wire Wire Line
	1350 3900 1350 3750
Connection ~ 1350 3900
$Comp
L power:+3V3 #PWR01
U 1 1 6250A326
P 1350 3750
F 0 "#PWR01" H 1350 3600 50  0001 C CNN
F 1 "+3V3" H 1365 3923 50  0000 C CNN
F 2 "" H 1350 3750 50  0001 C CNN
F 3 "" H 1350 3750 50  0001 C CNN
	1    1350 3750
	1    0    0    -1  
$EndComp
Text Label 2050 3750 0    50   ~ 0
VCC-PROTECTED
Connection ~ 2050 4500
Wire Wire Line
	2050 4500 2650 4500
Connection ~ 1350 4500
Wire Wire Line
	1350 4500 1500 4500
Wire Wire Line
	1700 3900 1350 3900
Wire Wire Line
	750  4500 1350 4500
Text Label 750  4500 0    50   ~ 0
LV-DATA-OUT
Text Label 2650 4500 2    50   ~ 0
HV-DATA-OUT
Wire Wire Line
	4650 4000 4400 4000
Wire Wire Line
	4400 4000 4400 3900
Wire Wire Line
	4400 3900 3550 3900
Wire Wire Line
	3750 4100 4650 4100
Wire Wire Line
	3750 4300 4400 4300
Wire Wire Line
	4400 4300 4400 4200
Wire Wire Line
	4400 4200 4650 4200
Text Label 3750 4100 0    50   ~ 0
VCC-PROTECTED
$Comp
L power:GND #PWR07
U 1 1 62511B82
P 3550 3900
F 0 "#PWR07" H 3550 3650 50  0001 C CNN
F 1 "GND" H 3555 3727 50  0000 C CNN
F 2 "" H 3550 3900 50  0001 C CNN
F 3 "" H 3550 3900 50  0001 C CNN
	1    3550 3900
	1    0    0    -1  
$EndComp
Text Label 3750 4300 0    50   ~ 0
HV-DATA-OUT
$Comp
L Device:C C3
U 1 1 625128B9
P 6750 4150
F 0 "C3" H 6865 4196 50  0000 L CNN
F 1 "100n" H 6865 4105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6788 4000 50  0001 C CNN
F 3 "~" H 6750 4150 50  0001 C CNN
	1    6750 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 3850 6150 3850
$Comp
L power:GND #PWR011
U 1 1 62514991
P 6750 4550
F 0 "#PWR011" H 6750 4300 50  0001 C CNN
F 1 "GND" H 6755 4377 50  0000 C CNN
F 2 "" H 6750 4550 50  0001 C CNN
F 3 "" H 6750 4550 50  0001 C CNN
	1    6750 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 4550 6750 4450
Wire Wire Line
	6750 4450 7200 4450
Wire Wire Line
	7200 4450 7200 4200
Connection ~ 6750 4450
Wire Wire Line
	6750 4450 6750 4300
Text Label 6150 3850 0    50   ~ 0
USER-BUTTON
Wire Wire Line
	7200 4200 7250 4200
Wire Wire Line
	6750 3850 6750 4000
Wire Wire Line
	7250 4100 7200 4100
Wire Wire Line
	7200 4100 7200 3850
Wire Wire Line
	7200 3850 6750 3850
Connection ~ 6750 3850
$Comp
L Device:C C4
U 1 1 6251DC3B
P 9500 4150
F 0 "C4" H 9615 4196 50  0000 L CNN
F 1 "100n" H 9615 4105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9538 4000 50  0001 C CNN
F 3 "~" H 9500 4150 50  0001 C CNN
	1    9500 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 3850 8900 3850
$Comp
L power:GND #PWR014
U 1 1 6251DC42
P 9500 4550
F 0 "#PWR014" H 9500 4300 50  0001 C CNN
F 1 "GND" H 9505 4377 50  0000 C CNN
F 2 "" H 9500 4550 50  0001 C CNN
F 3 "" H 9500 4550 50  0001 C CNN
	1    9500 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 4550 9500 4450
Wire Wire Line
	9500 4450 9950 4450
Connection ~ 9500 4450
Wire Wire Line
	9500 4450 9500 4300
Text Label 8900 3850 0    50   ~ 0
RESET
Wire Wire Line
	9500 3850 9500 4000
Wire Wire Line
	9950 3850 9500 3850
Connection ~ 9500 3850
Wire Wire Line
	9950 3850 9950 4100
Wire Wire Line
	9950 4100 10000 4100
Wire Wire Line
	10000 4200 9950 4200
Wire Wire Line
	9950 4200 9950 4450
$Comp
L power:GND #PWR02
U 1 1 62520202
P 1350 6150
F 0 "#PWR02" H 1350 5900 50  0001 C CNN
F 1 "GND" H 1355 5977 50  0000 C CNN
F 2 "" H 1350 6150 50  0001 C CNN
F 3 "" H 1350 6150 50  0001 C CNN
	1    1350 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 6050 1350 6050
Wire Wire Line
	1350 6050 1350 6150
Text Notes 700  5650 0    50   Italic 0
Input: 5 V / max. 4 A
$Comp
L Device:CP C2
U 1 1 62526401
P 4650 6600
F 0 "C2" H 4768 6646 50  0000 L CNN
F 1 "1000u / 16V" H 4768 6555 50  0000 L CNN
F 2 "" H 4688 6450 50  0001 C CNN
F 3 "~" H 4650 6600 50  0001 C CNN
	1    4650 6600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 6252727D
P 3900 6600
F 0 "R4" H 3970 6646 50  0000 L CNN
F 1 "100k" H 3970 6555 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3830 6600 50  0001 C CNN
F 3 "~" H 3900 6600 50  0001 C CNN
	1    3900 6600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 6252756B
P 3150 6600
F 0 "C1" H 3265 6646 50  0000 L CNN
F 1 "100n" H 3265 6555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3188 6450 50  0001 C CNN
F 3 "~" H 3150 6600 50  0001 C CNN
	1    3150 6600
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse F1
U 1 1 6252A3AD
P 1650 5950
F 0 "F1" V 1453 5950 50  0000 C CNN
F 1 "4A" V 1544 5950 50  0000 C CNN
F 2 "footprints:FUSE_0154004.DR" V 1580 5950 50  0001 C CNN
F 3 "~" H 1650 5950 50  0001 C CNN
	1    1650 5950
	0    1    1    0   
$EndComp
Wire Wire Line
	1200 5950 1500 5950
Wire Wire Line
	1800 5950 2400 5950
Wire Wire Line
	4100 5950 4650 5950
$Comp
L CDSOD323-T05C:CDSOD323-T05C D1
U 1 1 6252D5FE
P 2400 6600
F 0 "D1" V 2354 6768 50  0000 L CNN
F 1 "CDSOD323-T05C" H 2100 6400 50  0000 L CNN
F 2 "footprints:CDSOD323-T05C" H 2400 6600 50  0001 L BNN
F 3 "https://www.bourns.com/docs/Product-Datasheets/CDSOD323-TxxC.PDF" H 2400 6600 50  0001 L BNN
F 4 "Bourns" H 2400 6600 50  0001 L BNN "Manufacturer"
	1    2400 6600
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR05
U 1 1 6252F111
P 2400 7050
F 0 "#PWR05" H 2400 6800 50  0001 C CNN
F 1 "GND" H 2405 6877 50  0000 C CNN
F 2 "" H 2400 7050 50  0001 C CNN
F 3 "" H 2400 7050 50  0001 C CNN
	1    2400 7050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 6252F30D
P 3150 7050
F 0 "#PWR06" H 3150 6800 50  0001 C CNN
F 1 "GND" H 3155 6877 50  0000 C CNN
F 2 "" H 3150 7050 50  0001 C CNN
F 3 "" H 3150 7050 50  0001 C CNN
	1    3150 7050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 6252F476
P 3900 7050
F 0 "#PWR08" H 3900 6800 50  0001 C CNN
F 1 "GND" H 3905 6877 50  0000 C CNN
F 2 "" H 3900 7050 50  0001 C CNN
F 3 "" H 3900 7050 50  0001 C CNN
	1    3900 7050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 6252F634
P 4650 7050
F 0 "#PWR010" H 4650 6800 50  0001 C CNN
F 1 "GND" H 4655 6877 50  0000 C CNN
F 2 "" H 4650 7050 50  0001 C CNN
F 3 "" H 4650 7050 50  0001 C CNN
	1    4650 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 5950 2400 6300
Connection ~ 2400 5950
Wire Wire Line
	2400 5950 3150 5950
Wire Wire Line
	2400 6900 2400 7050
Wire Wire Line
	3150 6750 3150 7050
Wire Wire Line
	3900 6750 3900 7050
Wire Wire Line
	4650 6750 4650 7050
Wire Wire Line
	3150 6450 3150 5950
Connection ~ 3150 5950
Wire Wire Line
	3150 5950 3700 5950
Wire Wire Line
	3900 6450 3900 6250
Wire Wire Line
	4650 6450 4650 5950
Connection ~ 4650 5950
Wire Wire Line
	4650 5950 5550 5950
Text Label 5550 5950 2    50   ~ 0
VCC-PROTECTED
$Comp
L Device:Q_PMOS_GDS Q2
U 1 1 6253AB41
P 3900 6050
F 0 "Q2" V 4242 6050 50  0000 C CNN
F 1 "PMOS_GDS_STD26P3LLH6" V 4151 6050 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-252-3_TabPin2" H 4100 6150 50  0001 C CNN
F 3 "https://www.mouser.de/datasheet/2/389/dm00063009-1797868.pdf" H 3900 6050 50  0001 C CNN
	1    3900 6050
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 626614FB
P 1000 6050
F 0 "J2" H 918 5725 50  0000 C CNN
F 1 "Conn_01x02" H 918 5816 50  0000 C CNN
F 2 "footprints:66200211022" H 1000 6050 50  0001 C CNN
F 3 "~" H 1000 6050 50  0001 C CNN
	1    1000 6050
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J5
U 1 1 62673BF7
P 8750 5800
F 0 "J5" H 8800 6300 50  0000 C CNN
F 1 "Conn_02x05_Odd_Even" H 8800 6150 50  0000 C CNN
F 2 "footprints:61201021621" H 8750 5800 50  0001 C CNN
F 3 "~" H 8750 5800 50  0001 C CNN
	1    8750 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 5600 9100 5600
Wire Wire Line
	9050 5700 9100 5700
Wire Wire Line
	9050 5800 9100 5800
Wire Wire Line
	9050 5900 9100 5900
$Comp
L Device:R R8
U 1 1 6267BF9E
P 9250 5900
F 0 "R8" V 9300 5700 50  0000 C CNN
F 1 "100" V 9250 5900 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 9180 5900 50  0001 C CNN
F 3 "~" H 9250 5900 50  0001 C CNN
	1    9250 5900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9400 5900 10400 5900
$Comp
L Device:R R7
U 1 1 6267C0A2
P 9250 5800
F 0 "R7" V 9300 5600 50  0000 C CNN
F 1 "100" V 9250 5800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 9180 5800 50  0001 C CNN
F 3 "~" H 9250 5800 50  0001 C CNN
	1    9250 5800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9400 5800 10400 5800
$Comp
L Device:R R6
U 1 1 6267C1A6
P 9250 5700
F 0 "R6" V 9300 5500 50  0000 C CNN
F 1 "100" V 9250 5700 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 9180 5700 50  0001 C CNN
F 3 "~" H 9250 5700 50  0001 C CNN
	1    9250 5700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9400 5700 10400 5700
$Comp
L Device:R R5
U 1 1 6267C2D4
P 9250 5600
F 0 "R5" V 9300 5400 50  0000 C CNN
F 1 "100" V 9250 5600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 9180 5600 50  0001 C CNN
F 3 "~" H 9250 5600 50  0001 C CNN
	1    9250 5600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9400 5600 10400 5600
Wire Wire Line
	8550 5700 8300 5700
Wire Wire Line
	8300 5700 8300 5800
Wire Wire Line
	8300 6000 8550 6000
Wire Wire Line
	8550 5900 8300 5900
Connection ~ 8300 5900
Wire Wire Line
	8300 5900 8300 6000
Wire Wire Line
	8550 5800 8300 5800
Connection ~ 8300 5800
Wire Wire Line
	8300 5800 8300 5900
Wire Wire Line
	8300 6000 8300 6100
$Comp
L power:GND #PWR013
U 1 1 62690164
P 8300 6100
F 0 "#PWR013" H 8300 5850 50  0001 C CNN
F 1 "GND" H 8305 5927 50  0000 C CNN
F 2 "" H 8300 6100 50  0001 C CNN
F 3 "" H 8300 6100 50  0001 C CNN
	1    8300 6100
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR012
U 1 1 62690559
P 8300 5450
F 0 "#PWR012" H 8300 5300 50  0001 C CNN
F 1 "+3V3" H 8315 5623 50  0000 C CNN
F 2 "" H 8300 5450 50  0001 C CNN
F 3 "" H 8300 5450 50  0001 C CNN
	1    8300 5450
	1    0    0    -1  
$EndComp
Connection ~ 8300 6000
Wire Wire Line
	8550 5600 8300 5600
Wire Wire Line
	8300 5600 8300 5450
NoConn ~ 9050 6000
Text Label 10400 5900 2    50   ~ 0
MTDI
Text Label 10400 5800 2    50   ~ 0
MTDO
Text Label 10400 5700 2    50   ~ 0
MTCK
Text Label 10400 5600 2    50   ~ 0
MTMS
Wire Wire Line
	5000 1300 3550 1300
Wire Wire Line
	5000 1450 3550 1450
Wire Wire Line
	5000 1950 3550 1950
Wire Wire Line
	7750 1150 6500 1150
Wire Wire Line
	7750 2250 6500 2250
Wire Wire Line
	7750 2550 6500 2550
Wire Wire Line
	5000 2500 3550 2500
Wire Wire Line
	7750 1250 6500 1250
Wire Wire Line
	5000 2350 3550 2350
Wire Wire Line
	5000 2150 3550 2150
Text Label 3550 1300 0    50   ~ 0
RESET
Text Label 3550 1450 0    50   ~ 0
LDR-ANALOG-IN
Text Label 3550 1950 0    50   ~ 0
LV-DATA-OUT
Text Label 3550 2150 0    50   ~ 0
MTDI
Text Label 3550 2350 0    50   ~ 0
MTCK
Text Label 3550 2500 0    50   ~ 0
VCC-PROTECTED
Text Label 7750 2550 2    50   ~ 0
MTDO
Text Label 7750 2250 2    50   ~ 0
USER-BUTTON
Text Label 7750 1150 2    50   ~ 0
SDA
Text Label 7750 1250 2    50   ~ 0
SCL
Text Label 3550 2050 0    50   ~ 0
MTMS
Wire Wire Line
	5000 2050 3550 2050
Wire Notes Line
	8750 2150 10750 2150
Wire Notes Line
	10750 2150 10750 3150
Wire Notes Line
	10750 3150 8750 3150
Wire Notes Line
	8750 3150 8750 2150
Text Notes 8750 2150 0    50   ~ 0
I2S
Wire Wire Line
	9900 2500 9100 2500
Wire Wire Line
	9900 2600 9100 2600
Text Label 9100 2500 0    50   ~ 0
I2S_CLK
Text Label 9100 2600 0    50   ~ 0
I2S_WS
$Comp
L Connector_Generic:Conn_01x03 J7
U 1 1 626FB543
P 10100 2600
F 0 "J7" H 10180 2642 50  0000 L CNN
F 1 "Conn_01x03" H 10180 2551 50  0000 L CNN
F 2 "footprints:66200311022" H 10100 2600 50  0001 C CNN
F 3 "~" H 10100 2600 50  0001 C CNN
	1    10100 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 2700 9100 2700
Text Label 9100 2700 0    50   ~ 0
I2S_Data_IN
Wire Wire Line
	5000 1850 3550 1850
Wire Wire Line
	5000 1750 3550 1750
Text Label 3550 1850 0    50   ~ 0
I2S_CLK
Text Label 3550 1750 0    50   ~ 0
I2S_WS
Wire Wire Line
	5000 1650 3550 1650
Text Label 3550 1650 0    50   ~ 0
I2S_Data_IN
$Sheet
S 5000 1000 1500 1800
U 62912066
F0 "ESP32" 50
F1 "ESP32.sch" 50
F2 "RESET" I L 5000 1300 50 
F3 "LDR-ANALOG-IN" B L 5000 1450 50 
F4 "I2S_Data_IN" B L 5000 1650 50 
F5 "I2S_WS" B L 5000 1750 50 
F6 "I2S_CLK" B L 5000 1850 50 
F7 "LV-DATA-OUT" B L 5000 1950 50 
F8 "MTMS" B L 5000 2050 50 
F9 "MTDI" B L 5000 2150 50 
F10 "MTCK" B L 5000 2350 50 
F11 "VCC-PROTECTED" U L 5000 2500 50 
F12 "SDA" B R 6500 1150 50 
F13 "SCL" B R 6500 1250 50 
F14 "USER-BUTTON" I R 6500 2250 50 
F15 "MTDO" B R 6500 2550 50 
$EndSheet
$EndSCHEMATC
