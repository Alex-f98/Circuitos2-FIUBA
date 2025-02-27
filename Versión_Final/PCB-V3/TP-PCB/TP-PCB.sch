EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:CP Cin1
U 1 1 60F6CB96
P 4300 1650
F 0 "Cin1" H 4418 1696 50  0000 L CNN
F 1 "33uF/35V" H 4350 1550 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_3x5.3" H 4338 1500 50  0001 C CNN
F 3 "~" H 4300 1650 50  0001 C CNN
	1    4300 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 1900 4300 2000
Text GLabel 4500 1400 2    50   Input ~ 0
In
$Comp
L Connector:Conn_01x02_Male In1
U 1 1 60FBDEF3
P 3900 1400
F 0 "In1" H 4008 1581 50  0000 C CNN
F 1 "Conn_01x02_Male" H 4100 1500 50  0000 C CNN
F 2 "Connector_PinHeader_2.00mm:PinHeader_1x02_P2.00mm_Vertical_SMD_Pin1Left" H 3900 1400 50  0001 C CNN
F 3 "~" H 3900 1400 50  0001 C CNN
	1    3900 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 1500 4100 1900
Wire Wire Line
	4100 1900 4300 1900
Wire Wire Line
	4100 1400 4300 1400
Wire Wire Line
	4300 1500 4300 1400
Wire Wire Line
	4300 1800 4300 1900
Connection ~ 4300 1900
Wire Wire Line
	4300 1400 4500 1400
Connection ~ 4300 1400
$Comp
L Connector:Conn_01x02_Male Out1
U 1 1 60FADB04
P 7450 1450
F 0 "Out1" H 7422 1332 50  0000 R CNN
F 1 "Conn_01x02_Male" H 7422 1423 50  0000 R CNN
F 2 "Connector_PinHeader_2.00mm:PinHeader_1x02_P2.00mm_Vertical_SMD_Pin1Left" H 7450 1450 50  0001 C CNN
F 3 "~" H 7450 1450 50  0001 C CNN
	1    7450 1450
	-1   0    0    1   
$EndComp
Wire Wire Line
	7150 1450 7150 1600
Wire Wire Line
	7250 1450 7150 1450
$Comp
L power:GND #PWR0109
U 1 1 60FAFDBD
P 7150 1600
F 0 "#PWR0109" H 7150 1350 50  0001 C CNN
F 1 "GND" H 7155 1427 50  0000 C CNN
F 2 "" H 7150 1600 50  0001 C CNN
F 3 "" H 7150 1600 50  0001 C CNN
	1    7150 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 1350 7250 1350
Connection ~ 7150 1350
Wire Wire Line
	7150 1250 7150 1350
Text GLabel 7150 1250 1    50   Input ~ 0
Out
$Comp
L power:GND #PWR0107
U 1 1 60F9DB29
P 6600 1800
F 0 "#PWR0107" H 6600 1550 50  0001 C CNN
F 1 "GND" H 6605 1627 50  0000 C CNN
F 2 "" H 6600 1800 50  0001 C CNN
F 3 "" H 6600 1800 50  0001 C CNN
	1    6600 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 1350 6600 1400
$Comp
L Device:CP Cout1
U 1 1 60F6C5DA
P 6600 1550
F 0 "Cout1" H 6718 1596 50  0000 L CNN
F 1 "330uF/35V" H 6718 1505 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_3x5.3" H 6638 1400 50  0001 C CNN
F 3 "~" H 6600 1550 50  0001 C CNN
	1    6600 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 1700 6600 1800
$Comp
L power:GND #PWR0111
U 1 1 611508BE
P 6250 1800
F 0 "#PWR0111" H 6250 1550 50  0001 C CNN
F 1 "GND" H 6255 1627 50  0000 C CNN
F 2 "" H 6250 1800 50  0001 C CNN
F 3 "" H 6250 1800 50  0001 C CNN
	1    6250 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 1350 6250 1400
$Comp
L Device:CP Cout4
U 1 1 611508C5
P 6250 1550
F 0 "Cout4" H 6300 1650 50  0000 L CNN
F 1 "330uF/35V" V 6100 1300 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_3x5.3" H 6288 1400 50  0001 C CNN
F 3 "~" H 6250 1550 50  0001 C CNN
	1    6250 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 1700 6250 1800
$Comp
L Device:C Cout3
U 1 1 611547D4
P 5850 1550
F 0 "Cout3" H 5750 1650 50  0000 L CNN
F 1 "10uF/35V/X5R" V 5700 1150 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3216-18_Kemet-A" H 5888 1400 50  0001 C CNN
F 3 "~" H 5850 1550 50  0001 C CNN
	1    5850 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 1350 5850 1400
$Comp
L power:GND #PWR0112
U 1 1 6115869D
P 5850 1800
F 0 "#PWR0112" H 5850 1550 50  0001 C CNN
F 1 "GND" H 5855 1627 50  0000 C CNN
F 2 "" H 5850 1800 50  0001 C CNN
F 3 "" H 5850 1800 50  0001 C CNN
	1    5850 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 1700 5850 1800
$Comp
L Device:C Cout2
U 1 1 6115B389
P 5450 1550
F 0 "Cout2" H 5350 1650 50  0000 L CNN
F 1 "10uF/35V/X5R" V 5250 1250 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3216-18_Kemet-A" H 5488 1400 50  0001 C CNN
F 3 "~" H 5450 1550 50  0001 C CNN
	1    5450 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 1350 5450 1400
$Comp
L power:GND #PWR0113
U 1 1 6115B391
P 5450 1800
F 0 "#PWR0113" H 5450 1550 50  0001 C CNN
F 1 "GND" H 5455 1627 50  0000 C CNN
F 2 "" H 5450 1800 50  0001 C CNN
F 3 "" H 5450 1800 50  0001 C CNN
	1    5450 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 1700 5450 1800
Wire Wire Line
	5450 1350 5850 1350
Connection ~ 5850 1350
Wire Wire Line
	5850 1350 6250 1350
Wire Wire Line
	6250 1350 6600 1350
Connection ~ 6250 1350
Connection ~ 6600 1350
Wire Wire Line
	6600 1350 7150 1350
Wire Wire Line
	7200 3950 7200 4700
$Comp
L power:GND #PWR0106
U 1 1 610AD974
P 7200 4700
F 0 "#PWR0106" H 7200 4450 50  0001 C CNN
F 1 "GND" H 7205 4527 50  0000 C CNN
F 2 "" H 7200 4700 50  0001 C CNN
F 3 "" H 7200 4700 50  0001 C CNN
	1    7200 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 2950 6500 3150
Wire Wire Line
	6500 2950 6600 2950
Connection ~ 6500 2950
Wire Wire Line
	6250 2950 6500 2950
Connection ~ 6050 3750
Wire Wire Line
	6050 3350 6050 3750
Connection ~ 5600 2950
Wire Wire Line
	5600 2950 6050 2950
Connection ~ 5750 3950
Wire Wire Line
	5550 3950 5750 3950
Connection ~ 6050 4250
Wire Wire Line
	6050 4250 5700 4250
Wire Wire Line
	6050 3750 6600 3750
Wire Wire Line
	5600 3750 5600 2950
Wire Wire Line
	5600 3750 5550 3750
Wire Wire Line
	4000 2950 5600 2950
Wire Wire Line
	5700 3650 5550 3650
Wire Wire Line
	5700 4250 5700 3650
Wire Wire Line
	4100 4400 4100 4500
Connection ~ 4100 4400
Wire Wire Line
	5650 4400 4100 4400
Wire Wire Line
	5650 3850 5650 4400
Wire Wire Line
	5550 3850 5650 3850
Wire Wire Line
	4100 4050 4100 4400
$Comp
L power:GND #PWR0110
U 1 1 610863BC
P 6250 3350
F 0 "#PWR0110" H 6250 3100 50  0001 C CNN
F 1 "GND" H 6350 3350 50  0000 C CNN
F 2 "" H 6250 3350 50  0001 C CNN
F 3 "" H 6250 3350 50  0001 C CNN
	1    6250 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 3600 7200 3650
Connection ~ 7200 3600
Wire Wire Line
	7200 3500 7200 3600
Wire Wire Line
	6600 4250 6600 4350
Connection ~ 6600 4250
Wire Wire Line
	6050 4250 6600 4250
Wire Wire Line
	6050 4150 6050 4250
Wire Wire Line
	5750 4200 6250 4200
Wire Wire Line
	5750 3950 5750 4200
Wire Wire Line
	6250 3950 6250 4200
$Comp
L Transistor_FET:BSC035N10NS5 Q1
U 1 1 6100294D
P 5950 3950
F 0 "Q1" H 6156 3996 50  0000 L CNN
F 1 "BSC035N10NS5" H 5800 4300 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:TDSON-8-1" H 6150 3875 50  0001 L CIN
F 3 "http://www.infineon.com/dgdl/Infineon-BSC035N10NS5-DS-v02_00-EN.pdf?fileId=5546d4624ad04ef9014ae8b5f3bc1b6f" V 5950 3950 50  0001 L CNN
	1    5950 3950
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:BSC035N10NS5 Q2
U 1 1 6102A826
P 6500 3950
F 0 "Q2" H 6706 3996 50  0000 L CNN
F 1 "BSC035N10NS5" H 6700 3850 50  0001 L CNN
F 2 "Package_TO_SOT_SMD:TDSON-8-1" H 6700 3875 50  0001 L CIN
F 3 "http://www.infineon.com/dgdl/Infineon-BSC035N10NS5-DS-v02_00-EN.pdf?fileId=5546d4624ad04ef9014ae8b5f3bc1b6f" V 6500 3950 50  0001 L CNN
	1    6500 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 3950 6300 3950
Wire Wire Line
	6500 3150 6600 3150
$Comp
L TP-PCB-rescue:MBR20100CT-MBR20100CT D1
U 1 1 611D4D36
P 6900 3050
F 0 "D1" H 6900 3367 50  0000 C CNN
F 1 "MBR20100CT" H 6900 3276 50  0000 C CNN
F 2 "MBR20100CS2TR-G1:TO254P1521X483-4N" H 6900 3050 50  0001 L BNN
F 3 "" H 6900 3050 50  0001 L BNN
F 4 "6730" H 6900 3050 50  0001 L BNN "SNAPEDA_PACKAGE_ID"
F 5 "22.86 mm" H 6900 3050 50  0001 L BNN "MAXIMUM_PACKAGE_HEIGHT"
F 6 "IPC-7351B" H 6900 3050 50  0001 L BNN "STANDARD"
F 7 "8-2" H 6900 3050 50  0001 L BNN "PARTREV"
F 8 "DIODES, Inc." H 6900 3050 50  0001 L BNN "MANUFACTURER"
	1    6900 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 3750 4100 3750
Wire Wire Line
	7200 3200 7200 3050
Text GLabel 7200 3050 2    50   Input ~ 0
Out
$Comp
L Device:R R2
U 1 1 60F95503
P 7200 3350
F 0 "R2" H 7270 3396 50  0000 L CNN
F 1 "20k" H 7270 3305 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 7130 3350 50  0001 C CNN
F 3 "~" H 7200 3350 50  0001 C CNN
	1    7200 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 60F95F9D
P 7200 3800
F 0 "R1" H 7270 3846 50  0000 L CNN
F 1 "1.3k" H 7270 3755 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 7130 3800 50  0001 C CNN
F 3 "~" H 7200 3800 50  0001 C CNN
	1    7200 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 3600 7200 3600
Text GLabel 6850 3600 0    50   Input ~ 0
FB
Wire Wire Line
	6600 4150 6600 4250
Wire Wire Line
	4100 3950 3650 3950
$Comp
L power:GND #PWR0104
U 1 1 60FE907C
P 5550 4050
F 0 "#PWR0104" H 5550 3800 50  0001 C CNN
F 1 "GND" H 5555 3877 50  0000 C CNN
F 2 "" H 5550 4050 50  0001 C CNN
F 3 "" H 5550 4050 50  0001 C CNN
	1    5550 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 3750 3400 4000
Wire Wire Line
	3650 3950 3650 4250
Text GLabel 3850 3850 0    50   Input ~ 0
FB
Connection ~ 4000 2950
Wire Wire Line
	4000 3100 4000 2950
Wire Wire Line
	4000 2950 3900 2950
Text GLabel 3900 2950 0    50   Input ~ 0
In
Wire Wire Line
	4000 3650 4100 3650
Wire Wire Line
	4000 3400 4000 3650
$Comp
L Device:R Rrun1
U 1 1 60FA5172
P 4000 3250
F 0 "Rrun1" H 4070 3296 50  0000 L CNN
F 1 "1Meg" H 4070 3205 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 3930 3250 50  0001 C CNN
F 3 "~" H 4000 3250 50  0001 C CNN
	1    4000 3250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 60FA3E89
P 4300 2000
F 0 "#PWR0108" H 4300 1750 50  0001 C CNN
F 1 "GND" H 4305 1827 50  0000 C CNN
F 2 "" H 4300 2000 50  0001 C CNN
F 3 "" H 4300 2000 50  0001 C CNN
	1    4300 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 3850 3850 3850
Wire Wire Line
	6600 4650 6600 4700
$Comp
L power:GND #PWR0105
U 1 1 60F8D8CD
P 6600 4700
F 0 "#PWR0105" H 6600 4450 50  0001 C CNN
F 1 "GND" H 6605 4527 50  0000 C CNN
F 2 "" H 6600 4700 50  0001 C CNN
F 3 "" H 6600 4700 50  0001 C CNN
	1    6600 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:R Rsense1
U 1 1 60F8D19A
P 6600 4500
F 0 "Rsense1" H 6670 4546 50  0000 L CNN
F 1 "0.009" H 6670 4455 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 6530 4500 50  0001 C CNN
F 3 "~" H 6600 4500 50  0001 C CNN
	1    6600 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 4800 4100 4850
$Comp
L power:GND #PWR0103
U 1 1 60F867D0
P 4100 4850
F 0 "#PWR0103" H 4100 4600 50  0001 C CNN
F 1 "GND" H 4105 4677 50  0000 C CNN
F 2 "" H 4100 4850 50  0001 C CNN
F 3 "" H 4100 4850 50  0001 C CNN
	1    4100 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 4550 3650 4850
$Comp
L power:GND #PWR0102
U 1 1 60F81842
P 3650 4850
F 0 "#PWR0102" H 3650 4600 50  0001 C CNN
F 1 "GND" H 3655 4677 50  0000 C CNN
F 2 "" H 3650 4850 50  0001 C CNN
F 3 "" H 3650 4850 50  0001 C CNN
	1    3650 4850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 60F7D34D
P 3650 4400
F 0 "R3" H 3720 4446 50  0000 L CNN
F 1 "250k" H 3720 4355 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 3580 4400 50  0001 C CNN
F 3 "~" H 3650 4400 50  0001 C CNN
	1    3650 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 4850 3400 4700
$Comp
L power:GND #PWR0101
U 1 1 60F7BE3A
P 3400 4850
F 0 "#PWR0101" H 3400 4600 50  0001 C CNN
F 1 "GND" H 3405 4677 50  0000 C CNN
F 2 "" H 3400 4850 50  0001 C CNN
F 3 "" H 3400 4850 50  0001 C CNN
	1    3400 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 4300 3400 4400
$Comp
L Device:R R4
U 1 1 60F7A3B3
P 3400 4150
F 0 "R4" H 3150 4200 50  0000 L CNN
F 1 "20k" H 3150 4100 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 3330 4150 50  0001 C CNN
F 3 "~" H 3400 4150 50  0001 C CNN
	1    3400 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 60F6D296
P 4100 4650
F 0 "C2" H 4215 4696 50  0000 L CNN
F 1 "4.7uF/10V/X5R" H 4215 4605 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3216-18_Kemet-A" H 4138 4500 50  0001 C CNN
F 3 "~" H 4100 4650 50  0001 C CNN
	1    4100 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 60F6BFA1
P 3400 4550
F 0 "C1" H 3150 4600 50  0000 L CNN
F 1 "35nF" H 3100 4500 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3216-18_Kemet-A" H 3438 4400 50  0001 C CNN
F 3 "~" H 3400 4550 50  0001 C CNN
	1    3400 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:L_Core_Ferrite_Coupled L1
U 1 1 60F68ED4
P 6150 3150
F 0 "L1" V 6104 3294 50  0000 L CNN
F 1 "L_Core_Ferrite_Coupled" V 5850 3100 50  0000 L CNN
F 2 "Nuestra Libreria:ALT_Carrete_E42-21-20" H 6150 3150 50  0001 C CNN
F 3 "~" H 6150 3150 50  0001 C CNN
	1    6150 3150
	0    -1   1    0   
$EndComp
$Comp
L TP-PCB-rescue:LTC1871EMS-1#TRPBF-LTC1871EMS-1_TRPBF U1
U 1 1 60F2074F
P 4050 3500
F 0 "U1" H 4825 3715 50  0000 C CNN
F 1 "LTC1871EMS-1#TRPBF" H 4825 3624 50  0000 C CNN
F 2 "LTC1871EMS-1_TRPBF:MSOP-10_MS" H 4100 3350 50  0001 L BNN
F 3 "" H 4050 3500 50  0001 L BNN
F 4 "Linear Technology" H 4100 3350 50  0001 L BNN "VENDOR"
F 5 "ltc1871ems7" H 4100 3350 50  0001 L BNN "MANUFACTURER_PART_NUMBER"
	1    4050 3500
	1    0    0    -1  
$EndComp
$EndSCHEMATC
