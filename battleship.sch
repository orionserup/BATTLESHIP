EESchema Schematic File Version 4
LIBS:battleship-cache
EELAYER 29 0
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
L Device:R R2
U 1 1 5D40DDA2
P 7400 1250
F 0 "R2" V 7607 1250 50  0001 C CNN
F 1 "4.7k" V 7515 1250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7330 1250 50  0001 C CNN
F 3 "~" H 7400 1250 50  0001 C CNN
	1    7400 1250
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R6
U 1 1 5D4111B7
P 8450 750
F 0 "R6" H 8380 659 50  0001 R CNN
F 1 "1M" H 8380 750 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 8380 841 50  0001 R CNN
F 3 "~" H 8450 750 50  0001 C CNN
	1    8450 750 
	-1   0    0    1   
$EndComp
Wire Wire Line
	8450 950  8450 900 
Wire Wire Line
	8450 600  8350 600 
Wire Wire Line
	8350 600  8350 950 
$Comp
L Device:C C10
U 1 1 5D4177BA
P 8600 900
F 0 "C10" V 8348 900 50  0001 C CNN
F 1 "10uF" V 8440 900 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 8638 750 50  0001 C CNN
F 3 "~" H 8600 900 50  0001 C CNN
	1    8600 900 
	0    1    1    0   
$EndComp
Connection ~ 8450 900 
$Comp
L Device:R R4
U 1 1 5D419172
P 7600 2250
F 0 "R4" V 7807 2250 50  0001 C CNN
F 1 "22" V 7715 2250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7530 2250 50  0001 C CNN
F 3 "~" H 7600 2250 50  0001 C CNN
	1    7600 2250
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R5
U 1 1 5D419F31
P 7600 2350
F 0 "R5" V 7807 2350 50  0001 C CNN
F 1 "22" V 7715 2350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7530 2350 50  0001 C CNN
F 3 "~" H 7600 2350 50  0001 C CNN
	1    7600 2350
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C7
U 1 1 5D41A82A
P 7600 2550
F 0 "C7" V 7348 2550 50  0001 C CNN
F 1 "1uF" V 7440 2550 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric" H 7638 2400 50  0001 C CNN
F 3 "~" H 7600 2550 50  0001 C CNN
	1    7600 2550
	0    1    1    0   
$EndComp
$Comp
L 74xx:74HC595 U2
U 1 1 5D41DE35
P 10000 1400
F 0 "U2" H 10000 2181 50  0000 C CNN
F 1 "74HC595" H 10000 2090 50  0000 C CNN
F 2 "lib:dvqfn" H 10000 1400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 10000 1400 50  0001 C CNN
	1    10000 1400
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC595 U3
U 1 1 5D41FC92
P 10000 2800
F 0 "U3" H 10000 3581 50  0000 C CNN
F 1 "74HC595" H 10000 3490 50  0000 C CNN
F 2 "lib:dvqfn" H 10000 2800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 10000 2800 50  0001 C CNN
	1    10000 2800
	1    0    0    -1  
$EndComp
Text GLabel 8950 900  2    50   Input ~ 0
GND
Wire Wire Line
	8950 900  8750 900 
$Comp
L 74xx:74HC595 U4
U 1 1 5D42654A
P 10000 4200
F 0 "U4" H 10000 4981 50  0000 C CNN
F 1 "74HC595" H 10000 4890 50  0000 C CNN
F 2 "lib:dvqfn" H 10000 4200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 10000 4200 50  0001 C CNN
	1    10000 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 4550 7450 2650
$Comp
L Connector:USB_B_Micro J1
U 1 1 5D43BBED
P 6600 2250
F 0 "J1" H 6657 2717 50  0000 C CNN
F 1 "USB_B_Micro" H 6657 2626 50  0000 C CNN
F 2 "lib:USB_Micro-B_Molex_47346-0001" H 6750 2200 50  0001 C CNN
F 3 "~" H 6750 2200 50  0001 C CNN
	1    6600 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 2050 7750 2050
Wire Wire Line
	7450 2250 6900 2250
Wire Wire Line
	6900 2350 7450 2350
Wire Wire Line
	6600 2650 7450 2650
Connection ~ 7450 2650
Wire Wire Line
	7450 2650 7450 2550
Wire Wire Line
	6500 2650 6600 2650
Connection ~ 6600 2650
Text GLabel 6900 1250 0    50   Input ~ 0
VCC
Wire Wire Line
	7250 1250 6900 1250
$Comp
L LED:ASMT-YTC2-0AA02 D1
U 1 1 5D442523
P 1050 2150
F 0 "D1" V 1004 2380 50  0000 L CNN
F 1 "ASMT-YTC2-0AA02" V 1095 2380 50  0001 L CNN
F 2 "LED_SMD:LED_RGB_5050-6" H 850 1830 50  0001 L CNN
F 3 "http://www.avagotech.com/docs/AV02-2589EN" H 1200 2150 50  0001 L CNN
	1    1050 2150
	0    1    1    0   
$EndComp
Connection ~ 1050 2450
Wire Wire Line
	1050 2450 950  2450
Connection ~ 1150 2450
Wire Wire Line
	1150 2450 1050 2450
Text GLabel 800  2450 0    50   Input ~ 0
25
Wire Wire Line
	8350 4550 8250 4550
Connection ~ 8250 4550
$Comp
L MCU_Microchip_ATmega:ATmega32U4RC-AU U1
U 1 1 5D40A1BB
P 8350 2750
F 0 "U1" H 8350 861 50  0000 C CNN
F 1 "ATmega32U4RC-AU" H 8350 770 50  0000 C CNN
F 2 "Package_QFP:TQFP-44_10x10mm_P0.8mm" H 8350 2750 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/Atmel-7766-8-bit-AVR-ATmega16U4-32U4_Datasheet.pdf" H 8350 2750 50  0001 C CNN
	1    8350 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal Y1
U 1 1 5D5337E2
P 7300 1550
F 0 "Y1" V 7254 1681 50  0001 L CNN
F 1 "16MHz" V 7345 1681 50  0000 L CNN
F 2 "Crystal:Crystal_HC18-U_Vertical" H 7300 1550 50  0001 C CNN
F 3 "~" H 7300 1550 50  0001 C CNN
	1    7300 1550
	0    1    1    0   
$EndComp
Wire Wire Line
	7750 1450 7450 1450
Wire Wire Line
	7450 1450 7450 1400
Wire Wire Line
	7750 1650 7450 1650
Wire Wire Line
	7450 1650 7450 1700
Wire Wire Line
	7450 1700 7300 1700
Text GLabel 800  3200 0    50   Input ~ 0
26
Text GLabel 850  3950 0    50   Input ~ 0
27
Text GLabel 850  5450 0    50   Input ~ 0
29
Text GLabel 850  6200 0    50   Input ~ 0
30
Text GLabel 800  6950 0    50   Input ~ 0
31
Text GLabel 800  7700 0    50   Input ~ 0
32
$Comp
L Device:C C4
U 1 1 5D7096DE
P 7150 1700
F 0 "C4" V 6898 1700 50  0001 C CNN
F 1 "22pf" V 6989 1700 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7188 1550 50  0001 C CNN
F 3 "~" H 7150 1700 50  0001 C CNN
	1    7150 1700
	0    1    1    0   
$EndComp
Connection ~ 7300 1700
Wire Wire Line
	7300 1400 7450 1400
$Comp
L Device:C C3
U 1 1 5D70DDD2
P 7150 1400
F 0 "C3" V 6898 1400 50  0001 C CNN
F 1 "22pf" V 6989 1400 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7188 1250 50  0001 C CNN
F 3 "~" H 7150 1400 50  0001 C CNN
	1    7150 1400
	0    1    1    0   
$EndComp
Connection ~ 7300 1400
Wire Wire Line
	7000 1400 7000 1550
Text GLabel 6900 1550 0    50   Input ~ 0
GND
Wire Wire Line
	7000 1550 6900 1550
Connection ~ 7000 1550
Wire Wire Line
	7000 1550 7000 1700
Text GLabel 950  1850 1    50   Input ~ 0
1
Text GLabel 950  2600 1    50   Input ~ 0
1
Text GLabel 950  3350 1    50   Input ~ 0
1
Text GLabel 950  4100 1    50   Input ~ 0
1
Text GLabel 950  4850 1    50   Input ~ 0
1
Text GLabel 950  5600 1    50   Input ~ 0
1
Text GLabel 950  6350 1    50   Input ~ 0
1
Text GLabel 950  7100 1    50   Input ~ 0
1
Text GLabel 10700 1000 2    50   Input ~ 0
A1
Text GLabel 9000 4950 1    50   Input ~ 0
VCC
Text GLabel 10700 1100 2    50   Input ~ 0
A2
Text GLabel 10700 1200 2    50   Input ~ 0
A3
Text GLabel 10700 1300 2    50   Input ~ 0
A4
Text GLabel 10700 1400 2    50   Input ~ 0
A5
Text GLabel 10700 1500 2    50   Input ~ 0
A6
Text GLabel 10700 1600 2    50   Input ~ 0
A7
Text GLabel 10700 1700 2    50   Input ~ 0
A8
Text GLabel 7450 4550 3    50   Input ~ 0
GND
Text GLabel 7300 2050 1    50   Input ~ 0
VCC
Text Label 7750 1250 1    50   ~ 0
RESET
$Comp
L Switch:SW_DPST_x2 SW1
U 1 1 5D94BA9B
P 7150 950
F 0 "SW1" V 7196 862 50  0001 R CNN
F 1 "SW_DPST_x2" V 7105 862 50  0001 R CNN
F 2 "Button_Switch_SMD:SW_SPST_EVQPE1" H 7150 950 50  0001 C CNN
F 3 "~" H 7150 950 50  0001 C CNN
	1    7150 950 
	1    0    0    -1  
$EndComp
Text GLabel 6900 950  0    50   Input ~ 0
GND
Text GLabel 1050 1850 1    50   Input ~ 0
2
Text GLabel 1050 2600 1    50   Input ~ 0
2
Text GLabel 1050 3350 1    50   Input ~ 0
2
Text GLabel 1050 4100 1    50   Input ~ 0
2
Text GLabel 1050 4850 1    50   Input ~ 0
2
Text GLabel 1050 5600 1    50   Input ~ 0
2
Text GLabel 1050 6350 1    50   Input ~ 0
2
Text GLabel 1050 7100 1    50   Input ~ 0
2
Text GLabel 1150 1850 1    50   Input ~ 0
3
Text GLabel 1150 2600 1    50   Input ~ 0
3
Text GLabel 1150 3350 1    50   Input ~ 0
3
Text GLabel 1150 4100 1    50   Input ~ 0
3
Text GLabel 1150 4850 1    50   Input ~ 0
3
Text GLabel 1150 5600 1    50   Input ~ 0
3
Text GLabel 1150 6350 1    50   Input ~ 0
3
Text GLabel 1150 7100 1    50   Input ~ 0
3
Text GLabel 1700 1850 1    50   Input ~ 0
4
Text GLabel 1700 2600 1    50   Input ~ 0
4
Connection ~ 950  2450
Wire Wire Line
	950  2450 800  2450
Text GLabel 1700 3350 1    50   Input ~ 0
4
Text GLabel 1700 4100 1    50   Input ~ 0
4
Text GLabel 1700 4850 1    50   Input ~ 0
4
Text GLabel 1700 5600 1    50   Input ~ 0
4
Text GLabel 1700 6350 1    50   Input ~ 0
4
Text GLabel 1700 7100 1    50   Input ~ 0
4
Text GLabel 1800 1850 1    50   Input ~ 0
5
Text GLabel 1800 2600 1    50   Input ~ 0
5
Text GLabel 1800 3350 1    50   Input ~ 0
5
Text GLabel 1800 4100 1    50   Input ~ 0
5
Text GLabel 1800 4850 1    50   Input ~ 0
5
Text GLabel 1800 5600 1    50   Input ~ 0
5
Text GLabel 1800 6350 1    50   Input ~ 0
5
Text GLabel 1800 7100 1    50   Input ~ 0
5
Text GLabel 1900 1850 1    50   Input ~ 0
6
Text GLabel 1900 2600 1    50   Input ~ 0
6
Text GLabel 1900 3350 1    50   Input ~ 0
6
Text GLabel 1900 4100 1    50   Input ~ 0
6
Text GLabel 1900 4850 1    50   Input ~ 0
6
Text GLabel 1900 7100 1    50   Input ~ 0
6
$Comp
L Device:R R1
U 1 1 5D4C25ED
P 6850 3450
F 0 "R1" H 6920 3496 50  0001 L CNN
F 1 "1k" H 6920 3450 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6780 3450 50  0001 C CNN
F 3 "~" H 6850 3450 50  0001 C CNN
	1    6850 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D65
U 1 1 5D4C5161
P 6850 3750
F 0 "D65" V 6889 3633 50  0001 R CNN
F 1 "LED" V 6843 3633 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6850 3750 50  0001 C CNN
F 3 "~" H 6850 3750 50  0001 C CNN
	1    6850 3750
	0    -1   -1   0   
$EndComp
Text GLabel 6850 3300 1    50   Input ~ 0
VCC
Text GLabel 6850 3900 3    50   Input ~ 0
GND
Wire Wire Line
	8250 950  8250 600 
Wire Wire Line
	8250 600  8350 600 
Connection ~ 8350 600 
Text GLabel 10700 2400 2    50   Input ~ 0
A9
Text GLabel 10700 2500 2    50   Input ~ 0
A10
Text GLabel 10700 2600 2    50   Input ~ 0
A11
Text GLabel 10700 2700 2    50   Input ~ 0
A12
Text GLabel 10700 2800 2    50   Input ~ 0
A13
Text GLabel 10700 2900 2    50   Input ~ 0
A14
Text GLabel 10700 3000 2    50   Input ~ 0
A15
Text GLabel 10700 3100 2    50   Input ~ 0
A16
Wire Wire Line
	10400 4700 10550 4700
$Comp
L 74xx:74HC595 U5
U 1 1 5D427737
P 10000 5650
F 0 "U5" H 10000 6431 50  0000 C CNN
F 1 "74HC595" H 10000 6340 50  0000 C CNN
F 2 "lib:dvqfn" H 10000 5650 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 10000 5650 50  0001 C CNN
	1    10000 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 1250 9050 1250
Wire Wire Line
	9350 1250 9350 1000
Wire Wire Line
	9350 1000 9600 1000
Wire Wire Line
	9450 1200 9450 1350
Wire Wire Line
	9450 1350 9050 1350
Wire Wire Line
	9600 1200 9450 1200
Wire Wire Line
	8950 1450 9050 1450
Wire Wire Line
	9500 1450 9500 1300
Wire Wire Line
	9500 1300 9600 1300
Wire Wire Line
	8950 1650 9050 1650
Wire Wire Line
	9500 1650 9500 1600
Wire Wire Line
	9500 1600 9600 1600
Wire Wire Line
	10400 1900 10400 2150
Wire Wire Line
	10400 2150 9600 2150
Wire Wire Line
	9600 2150 9600 2400
Wire Wire Line
	10400 3300 10400 3550
Wire Wire Line
	10400 3550 9600 3550
Wire Wire Line
	9600 3550 9600 3800
Wire Wire Line
	10550 4700 10550 5000
Wire Wire Line
	10550 5000 9600 5000
Wire Wire Line
	9600 5000 9600 5250
Wire Wire Line
	10000 5050 10600 5050
Wire Wire Line
	10600 5050 10600 3600
Wire Wire Line
	10600 3600 10000 3600
Wire Wire Line
	10600 3600 10600 2200
Wire Wire Line
	10600 2200 10000 2200
Connection ~ 10600 3600
Wire Wire Line
	10600 2200 10600 800 
Wire Wire Line
	10600 800  10000 800 
Connection ~ 10600 2200
Text Label 9200 1350 0    50   ~ 0
SRCLK
Text Label 9200 1450 0    50   ~ 0
SRCLR
Text GLabel 9600 3000 0    50   Input ~ 0
OE
Text GLabel 9600 2900 0    50   Input ~ 0
RCLK
Text GLabel 9600 2700 0    50   Input ~ 0
SRCLR
Text GLabel 9600 2600 0    50   Input ~ 0
SRCLK
Text GLabel 9600 4000 0    50   Input ~ 0
SRCLK
Text GLabel 9600 4100 0    50   Input ~ 0
SRCLR
Text GLabel 9600 4300 0    50   Input ~ 0
RCLK
Text GLabel 9600 4400 0    50   Input ~ 0
OE
Text GLabel 9600 5450 0    50   Input ~ 0
SRCLK
Text GLabel 9600 5550 0    50   Input ~ 0
SRCLR
Text GLabel 9600 5750 0    50   Input ~ 0
RCLK
Text GLabel 9600 5850 0    50   Input ~ 0
OE
Wire Wire Line
	9300 2100 10000 2100
Wire Wire Line
	9300 4900 10000 4900
Connection ~ 9300 4900
Wire Wire Line
	9300 4900 9300 6350
Wire Wire Line
	9300 6350 10000 6350
Wire Wire Line
	7550 1250 7650 1250
$Comp
L Device:R R3
U 1 1 5DB825DB
P 7500 950
F 0 "R3" V 7293 950 50  0001 C CNN
F 1 "330" V 7385 950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7430 950 50  0001 C CNN
F 3 "~" H 7500 950 50  0001 C CNN
	1    7500 950 
	0    1    1    0   
$EndComp
Wire Wire Line
	7650 950  7650 1250
Connection ~ 7650 1250
Wire Wire Line
	7650 1250 7750 1250
$Comp
L Device:C C8
U 1 1 5DBA40A5
P 7650 800
F 0 "C8" H 7765 846 50  0001 L CNN
F 1 "100nf" H 7765 800 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 7688 650 50  0001 C CNN
F 3 "~" H 7650 800 50  0001 C CNN
	1    7650 800 
	1    0    0    -1  
$EndComp
Connection ~ 7650 950 
Wire Wire Line
	6900 950  6900 650 
Wire Wire Line
	6900 650  7650 650 
Wire Wire Line
	6900 950  6950 950 
Text GLabel 2450 1850 1    50   Input ~ 0
7
Text GLabel 2450 2600 1    50   Input ~ 0
7
Text GLabel 2450 3350 1    50   Input ~ 0
7
Text GLabel 2450 4100 1    50   Input ~ 0
7
Text GLabel 2450 4850 1    50   Input ~ 0
7
Text GLabel 2450 5600 1    50   Input ~ 0
7
Text GLabel 2450 6350 1    50   Input ~ 0
7
Text GLabel 2450 7100 1    50   Input ~ 0
7
Text GLabel 2550 1850 1    50   Input ~ 0
8
Text GLabel 2550 2600 1    50   Input ~ 0
8
Text GLabel 2550 3350 1    50   Input ~ 0
8
Text GLabel 2550 4100 1    50   Input ~ 0
8
Text GLabel 2550 4850 1    50   Input ~ 0
8
Text GLabel 2550 5600 1    50   Input ~ 0
8
Text GLabel 2550 6350 1    50   Input ~ 0
8
Text GLabel 2550 7100 1    50   Input ~ 0
8
Text GLabel 2650 1850 1    50   Input ~ 0
9
Text GLabel 2650 2600 1    50   Input ~ 0
9
Text GLabel 2650 3350 1    50   Input ~ 0
9
Text GLabel 2650 4100 1    50   Input ~ 0
9
Text GLabel 2650 4850 1    50   Input ~ 0
9
Text GLabel 2650 5600 1    50   Input ~ 0
9
Text GLabel 2650 6350 1    50   Input ~ 0
9
Text GLabel 2650 7100 1    50   Input ~ 0
9
Text Label 8350 850  1    50   ~ 0
VCC
Wire Wire Line
	10000 600  10000 800 
Connection ~ 8450 600 
Wire Wire Line
	8450 600  10000 600 
Connection ~ 10000 800 
Wire Wire Line
	9300 6350 8250 6350
Connection ~ 9300 6350
$Comp
L Transistor_BJT:2N2219 Q1
U 1 1 5E1A8519
P 800 800
F 0 "Q1" H 990 846 50  0001 L CNN
F 1 "2N2219" H 990 755 50  0001 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 1000 725 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/2N2219-D.PDF" H 800 800 50  0001 L CNN
	1    800  800 
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N2219 Q3
U 1 1 5E20675E
P 1300 800
F 0 "Q3" H 1490 846 50  0001 L CNN
F 1 "2N2219" H 1490 755 50  0001 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 1500 725 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/2N2219-D.PDF" H 1300 800 50  0001 L CNN
	1    1300 800 
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N2219 Q5
U 1 1 5E206F5E
P 1800 800
F 0 "Q5" H 1990 846 50  0001 L CNN
F 1 "2N2219" H 1990 755 50  0001 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2000 725 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/2N2219-D.PDF" H 1800 800 50  0001 L CNN
	1    1800 800 
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N2219 Q7
U 1 1 5E207764
P 2300 800
F 0 "Q7" H 2490 846 50  0001 L CNN
F 1 "2N2219" H 2490 755 50  0001 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2500 725 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/2N2219-D.PDF" H 2300 800 50  0001 L CNN
	1    2300 800 
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N2219 Q9
U 1 1 5E207FDA
P 2800 800
F 0 "Q9" H 2990 846 50  0001 L CNN
F 1 "2N2219" H 2990 755 50  0001 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3000 725 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/2N2219-D.PDF" H 2800 800 50  0001 L CNN
	1    2800 800 
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N2219 Q11
U 1 1 5E20874D
P 3300 800
F 0 "Q11" H 3490 846 50  0001 L CNN
F 1 "2N2219" H 3490 755 50  0001 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3500 725 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/2N2219-D.PDF" H 3300 800 50  0001 L CNN
	1    3300 800 
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N2219 Q13
U 1 1 5E2091E0
P 3800 800
F 0 "Q13" H 3990 846 50  0001 L CNN
F 1 "2N2219" H 3990 755 50  0001 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4000 725 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/2N2219-D.PDF" H 3800 800 50  0001 L CNN
	1    3800 800 
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N2219 Q15
U 1 1 5E209967
P 4300 800
F 0 "Q15" H 4490 846 50  0001 L CNN
F 1 "2N2219" H 4490 755 50  0001 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4500 725 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/2N2219-D.PDF" H 4300 800 50  0001 L CNN
	1    4300 800 
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N2219 Q17
U 1 1 5E20A151
P 4800 800
F 0 "Q17" H 4990 846 50  0001 L CNN
F 1 "2N2219" H 4990 755 50  0001 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5000 725 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/2N2219-D.PDF" H 4800 800 50  0001 L CNN
	1    4800 800 
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N2219 Q19
U 1 1 5E20A870
P 5300 800
F 0 "Q19" H 5490 846 50  0001 L CNN
F 1 "2N2219" H 5490 755 50  0001 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5500 725 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/2N2219-D.PDF" H 5300 800 50  0001 L CNN
	1    5300 800 
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N2219 Q21
U 1 1 5E20B429
P 5800 800
F 0 "Q21" H 5990 846 50  0001 L CNN
F 1 "2N2219" H 5990 755 50  0001 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6000 725 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/2N2219-D.PDF" H 5800 800 50  0001 L CNN
	1    5800 800 
	1    0    0    -1  
$EndComp
Text GLabel 600  800  3    50   Input ~ 0
A1
Text GLabel 1100 800  3    50   Input ~ 0
A2
Text GLabel 1600 800  3    50   Input ~ 0
A3
Text GLabel 2100 800  3    50   Input ~ 0
A4
$Comp
L Transistor_BJT:2N2219 Q23
U 1 1 5E20BDC0
P 6300 800
F 0 "Q23" H 6490 846 50  0001 L CNN
F 1 "2N2219" H 6490 755 50  0001 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6500 725 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/2N2219-D.PDF" H 6300 800 50  0001 L CNN
	1    6300 800 
	1    0    0    -1  
$EndComp
Connection ~ 5900 600 
Connection ~ 5400 600 
Connection ~ 4900 600 
Connection ~ 4400 600 
Connection ~ 3900 600 
Connection ~ 3400 600 
Wire Wire Line
	5400 600  5900 600 
Wire Wire Line
	3400 600  3900 600 
Wire Wire Line
	3900 600  4400 600 
Wire Wire Line
	4400 600  4900 600 
Wire Wire Line
	4900 600  5400 600 
Wire Wire Line
	5900 600  6400 600 
$Comp
L Transistor_BJT:2N2219 Q2
U 1 1 5E5D0BA1
P 800 1400
F 0 "Q2" H 990 1446 50  0001 L CNN
F 1 "2N2219" H 990 1355 50  0001 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 1000 1325 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/2N2219-D.PDF" H 800 1400 50  0001 L CNN
	1    800  1400
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N2219 Q4
U 1 1 5E5D0BA7
P 1300 1400
F 0 "Q4" H 1490 1446 50  0001 L CNN
F 1 "2N2219" H 1490 1355 50  0001 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 1500 1325 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/2N2219-D.PDF" H 1300 1400 50  0001 L CNN
	1    1300 1400
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N2219 Q6
U 1 1 5E5D0BAD
P 1800 1400
F 0 "Q6" H 1990 1446 50  0001 L CNN
F 1 "2N2219" H 1990 1355 50  0001 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2000 1325 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/2N2219-D.PDF" H 1800 1400 50  0001 L CNN
	1    1800 1400
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N2219 Q8
U 1 1 5E5D0BB3
P 2300 1400
F 0 "Q8" H 2490 1446 50  0001 L CNN
F 1 "2N2219" H 2490 1355 50  0001 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2500 1325 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/2N2219-D.PDF" H 2300 1400 50  0001 L CNN
	1    2300 1400
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N2219 Q10
U 1 1 5E5D0BB9
P 2800 1400
F 0 "Q10" H 2990 1446 50  0001 L CNN
F 1 "2N2219" H 2990 1355 50  0001 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3000 1325 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/2N2219-D.PDF" H 2800 1400 50  0001 L CNN
	1    2800 1400
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N2219 Q12
U 1 1 5E5D0BBF
P 3300 1400
F 0 "Q12" H 3490 1446 50  0001 L CNN
F 1 "2N2219" H 3490 1355 50  0001 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3500 1325 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/2N2219-D.PDF" H 3300 1400 50  0001 L CNN
	1    3300 1400
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N2219 Q14
U 1 1 5E5D0BC5
P 3800 1400
F 0 "Q14" H 3990 1446 50  0001 L CNN
F 1 "2N2219" H 3990 1355 50  0001 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4000 1325 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/2N2219-D.PDF" H 3800 1400 50  0001 L CNN
	1    3800 1400
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N2219 Q16
U 1 1 5E5D0BCB
P 4300 1400
F 0 "Q16" H 4490 1446 50  0001 L CNN
F 1 "2N2219" H 4490 1355 50  0001 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4500 1325 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/2N2219-D.PDF" H 4300 1400 50  0001 L CNN
	1    4300 1400
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N2219 Q18
U 1 1 5E5D0BD1
P 4800 1400
F 0 "Q18" H 4990 1446 50  0001 L CNN
F 1 "2N2219" H 4990 1355 50  0001 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5000 1325 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/2N2219-D.PDF" H 4800 1400 50  0001 L CNN
	1    4800 1400
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N2219 Q20
U 1 1 5E5D0BD7
P 5300 1400
F 0 "Q20" H 5490 1446 50  0001 L CNN
F 1 "2N2219" H 5490 1355 50  0001 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5500 1325 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/2N2219-D.PDF" H 5300 1400 50  0001 L CNN
	1    5300 1400
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N2219 Q22
U 1 1 5E5D0BDD
P 5800 1400
F 0 "Q22" H 5990 1446 50  0001 L CNN
F 1 "2N2219" H 5990 1355 50  0001 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6000 1325 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/2N2219-D.PDF" H 5800 1400 50  0001 L CNN
	1    5800 1400
	1    0    0    -1  
$EndComp
Text GLabel 900  1000 0    50   Input ~ 0
1
Text GLabel 1400 1000 0    50   Input ~ 0
2
Text GLabel 1900 1000 0    50   Input ~ 0
3
Connection ~ 1900 1200
Text GLabel 2400 1000 0    50   Input ~ 0
4
Connection ~ 1400 1200
Wire Wire Line
	1400 1200 1900 1200
$Comp
L Transistor_BJT:2N2219 Q24
U 1 1 5E5D0BEA
P 6300 1400
F 0 "Q24" H 6490 1446 50  0001 L CNN
F 1 "2N2219" H 6490 1355 50  0001 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6500 1325 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/2N2219-D.PDF" H 6300 1400 50  0001 L CNN
	1    6300 1400
	1    0    0    -1  
$EndComp
Connection ~ 5900 1200
Connection ~ 5400 1200
Connection ~ 4900 1200
Connection ~ 4400 1200
Connection ~ 3900 1200
Connection ~ 3400 1200
Connection ~ 2900 1200
Connection ~ 2400 1200
Wire Wire Line
	900  1200 1400 1200
Wire Wire Line
	1900 1200 2400 1200
Wire Wire Line
	5400 1200 5900 1200
Wire Wire Line
	2400 1200 2900 1200
Wire Wire Line
	2900 1200 3400 1200
Wire Wire Line
	3400 1200 3900 1200
Wire Wire Line
	3900 1200 4400 1200
Wire Wire Line
	4400 1200 4900 1200
Wire Wire Line
	4900 1200 5400 1200
Wire Wire Line
	5900 1200 6400 1200
Wire Wire Line
	6400 1200 6550 1200
Wire Wire Line
	6550 1200 6550 1000
Wire Wire Line
	6550 600  6400 600 
Connection ~ 6400 1200
Connection ~ 6400 600 
Text GLabel 2600 800  3    50   Input ~ 0
A5
Text GLabel 3100 800  3    50   Input ~ 0
A6
Connection ~ 2900 600 
Wire Wire Line
	2900 600  3400 600 
Connection ~ 2400 600 
Wire Wire Line
	2400 600  2900 600 
Wire Wire Line
	900  600  1400 600 
Connection ~ 1400 600 
Wire Wire Line
	1400 600  1900 600 
Connection ~ 1900 600 
Wire Wire Line
	1900 600  2400 600 
Text GLabel 3600 800  3    50   Input ~ 0
A7
Text GLabel 4100 800  3    50   Input ~ 0
A8
Text GLabel 4600 800  3    50   Input ~ 0
A9
Text GLabel 5100 800  3    50   Input ~ 0
A10
Text GLabel 5600 800  3    50   Input ~ 0
A11
Text GLabel 6100 800  3    50   Input ~ 0
A12
$Comp
L Device:R R7
U 1 1 5EAB2D36
P 10550 1000
F 0 "R7" V 10343 1000 50  0001 C CNN
F 1 "4.7K" V 10435 1000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10480 1000 50  0001 C CNN
F 3 "~" H 10550 1000 50  0001 C CNN
	1    10550 1000
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 5EAB7C3D
P 10550 1100
F 0 "R8" V 10343 1100 50  0001 C CNN
F 1 "4.7K" V 10435 1100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10480 1100 50  0001 C CNN
F 3 "~" H 10550 1100 50  0001 C CNN
	1    10550 1100
	0    1    1    0   
$EndComp
$Comp
L Device:R R9
U 1 1 5EAB7E60
P 10550 1200
F 0 "R9" V 10343 1200 50  0001 C CNN
F 1 "4.7K" V 10435 1200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10480 1200 50  0001 C CNN
F 3 "~" H 10550 1200 50  0001 C CNN
	1    10550 1200
	0    1    1    0   
$EndComp
$Comp
L Device:R R10
U 1 1 5EAB8024
P 10550 1300
F 0 "R10" V 10343 1300 50  0001 C CNN
F 1 "4.7K" V 10435 1300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10480 1300 50  0001 C CNN
F 3 "~" H 10550 1300 50  0001 C CNN
	1    10550 1300
	0    1    1    0   
$EndComp
$Comp
L Device:R R11
U 1 1 5EAB81F1
P 10550 1400
F 0 "R11" V 10343 1400 50  0001 C CNN
F 1 "4.7K" V 10435 1400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10480 1400 50  0001 C CNN
F 3 "~" H 10550 1400 50  0001 C CNN
	1    10550 1400
	0    1    1    0   
$EndComp
$Comp
L Device:R R12
U 1 1 5EAB838F
P 10550 1500
F 0 "R12" V 10343 1500 50  0001 C CNN
F 1 "4.7K" V 10435 1500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10480 1500 50  0001 C CNN
F 3 "~" H 10550 1500 50  0001 C CNN
	1    10550 1500
	0    1    1    0   
$EndComp
$Comp
L Device:R R13
U 1 1 5EAB84DC
P 10550 1600
F 0 "R13" V 10343 1600 50  0001 C CNN
F 1 "4.7K" V 10435 1600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10480 1600 50  0001 C CNN
F 3 "~" H 10550 1600 50  0001 C CNN
	1    10550 1600
	0    1    1    0   
$EndComp
$Comp
L Device:R R14
U 1 1 5EAB869F
P 10550 1700
F 0 "R14" V 10343 1700 50  0001 C CNN
F 1 "4.7K" V 10435 1700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10480 1700 50  0001 C CNN
F 3 "~" H 10550 1700 50  0001 C CNN
	1    10550 1700
	0    1    1    0   
$EndComp
$Comp
L Device:R R15
U 1 1 5EAB899C
P 10550 2400
F 0 "R15" V 10343 2400 50  0001 C CNN
F 1 "4.7K" V 10435 2400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10480 2400 50  0001 C CNN
F 3 "~" H 10550 2400 50  0001 C CNN
	1    10550 2400
	0    1    1    0   
$EndComp
$Comp
L Device:R R16
U 1 1 5EAB8EF2
P 10550 2500
F 0 "R16" V 10343 2500 50  0001 C CNN
F 1 "4.7K" V 10435 2500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10480 2500 50  0001 C CNN
F 3 "~" H 10550 2500 50  0001 C CNN
	1    10550 2500
	0    1    1    0   
$EndComp
$Comp
L Device:R R17
U 1 1 5EAB9059
P 10550 2600
F 0 "R17" V 10343 2600 50  0001 C CNN
F 1 "4.7K" V 10435 2600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10480 2600 50  0001 C CNN
F 3 "~" H 10550 2600 50  0001 C CNN
	1    10550 2600
	0    1    1    0   
$EndComp
$Comp
L Device:R R18
U 1 1 5EAB9219
P 10550 2700
F 0 "R18" V 10343 2700 50  0001 C CNN
F 1 "4.7K" V 10435 2700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10480 2700 50  0001 C CNN
F 3 "~" H 10550 2700 50  0001 C CNN
	1    10550 2700
	0    1    1    0   
$EndComp
$Comp
L Device:R R19
U 1 1 5EAB93EB
P 10550 2800
F 0 "R19" V 10343 2800 50  0001 C CNN
F 1 "4.7K" V 10435 2800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10480 2800 50  0001 C CNN
F 3 "~" H 10550 2800 50  0001 C CNN
	1    10550 2800
	0    1    1    0   
$EndComp
$Comp
L Device:R R20
U 1 1 5EAB9584
P 10550 2900
F 0 "R20" V 10343 2900 50  0001 C CNN
F 1 "4.7K" V 10435 2900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10480 2900 50  0001 C CNN
F 3 "~" H 10550 2900 50  0001 C CNN
	1    10550 2900
	0    1    1    0   
$EndComp
$Comp
L Device:R R21
U 1 1 5EAB9827
P 10550 3000
F 0 "R21" V 10343 3000 50  0001 C CNN
F 1 "4.7K" V 10435 3000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10480 3000 50  0001 C CNN
F 3 "~" H 10550 3000 50  0001 C CNN
	1    10550 3000
	0    1    1    0   
$EndComp
$Comp
L Device:R R22
U 1 1 5EAB99C4
P 10550 3100
F 0 "R22" V 10343 3100 50  0001 C CNN
F 1 "4.7K" V 10435 3100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10480 3100 50  0001 C CNN
F 3 "~" H 10550 3100 50  0001 C CNN
	1    10550 3100
	0    1    1    0   
$EndComp
$Comp
L Device:R R23
U 1 1 5EAB9B2E
P 10550 3800
F 0 "R23" V 10343 3800 50  0001 C CNN
F 1 "4.7K" V 10435 3800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10480 3800 50  0001 C CNN
F 3 "~" H 10550 3800 50  0001 C CNN
	1    10550 3800
	0    1    1    0   
$EndComp
$Comp
L Device:R R24
U 1 1 5EAB9F6E
P 10550 3900
F 0 "R24" V 10343 3900 50  0001 C CNN
F 1 "4.7K" V 10435 3900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10480 3900 50  0001 C CNN
F 3 "~" H 10550 3900 50  0001 C CNN
	1    10550 3900
	0    1    1    0   
$EndComp
$Comp
L Device:R R25
U 1 1 5EABA124
P 10550 4000
F 0 "R25" V 10343 4000 50  0001 C CNN
F 1 "4.7K" V 10435 4000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10480 4000 50  0001 C CNN
F 3 "~" H 10550 4000 50  0001 C CNN
	1    10550 4000
	0    1    1    0   
$EndComp
$Comp
L Device:R R26
U 1 1 5EABA2A1
P 10550 4100
F 0 "R26" V 10343 4100 50  0001 C CNN
F 1 "4.7K" V 10435 4100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10480 4100 50  0001 C CNN
F 3 "~" H 10550 4100 50  0001 C CNN
	1    10550 4100
	0    1    1    0   
$EndComp
$Comp
L Device:R R27
U 1 1 5EABA478
P 10550 4200
F 0 "R27" V 10343 4200 50  0001 C CNN
F 1 "4.7K" V 10435 4200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10480 4200 50  0001 C CNN
F 3 "~" H 10550 4200 50  0001 C CNN
	1    10550 4200
	0    1    1    0   
$EndComp
$Comp
L Device:R R28
U 1 1 5EABA5EB
P 10550 4300
F 0 "R28" V 10343 4300 50  0001 C CNN
F 1 "4.7K" V 10435 4300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10480 4300 50  0001 C CNN
F 3 "~" H 10550 4300 50  0001 C CNN
	1    10550 4300
	0    1    1    0   
$EndComp
$Comp
L Device:R R29
U 1 1 5EABA797
P 10550 4400
F 0 "R29" V 10343 4400 50  0001 C CNN
F 1 "4.7K" V 10435 4400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10480 4400 50  0001 C CNN
F 3 "~" H 10550 4400 50  0001 C CNN
	1    10550 4400
	0    1    1    0   
$EndComp
$Comp
L Device:R R30
U 1 1 5EABA97B
P 10550 4500
F 0 "R30" V 10343 4500 50  0001 C CNN
F 1 "4.7K" V 10435 4500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10480 4500 50  0001 C CNN
F 3 "~" H 10550 4500 50  0001 C CNN
	1    10550 4500
	0    1    1    0   
$EndComp
$Comp
L Device:R R31
U 1 1 5EABAB53
P 10550 5250
F 0 "R31" V 10343 5250 50  0001 C CNN
F 1 "1K" V 10435 5250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10480 5250 50  0001 C CNN
F 3 "~" H 10550 5250 50  0001 C CNN
	1    10550 5250
	0    1    1    0   
$EndComp
$Comp
L Device:R R32
U 1 1 5EABAEBC
P 10550 5350
F 0 "R32" V 10343 5350 50  0001 C CNN
F 1 "1K" V 10435 5350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10480 5350 50  0001 C CNN
F 3 "~" H 10550 5350 50  0001 C CNN
	1    10550 5350
	0    1    1    0   
$EndComp
$Comp
L Device:R R33
U 1 1 5EABB060
P 10550 5450
F 0 "R33" V 10343 5450 50  0001 C CNN
F 1 "1K" V 10435 5450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10480 5450 50  0001 C CNN
F 3 "~" H 10550 5450 50  0001 C CNN
	1    10550 5450
	0    1    1    0   
$EndComp
$Comp
L Device:R R34
U 1 1 5EABB1BC
P 10550 5550
F 0 "R34" V 10343 5550 50  0001 C CNN
F 1 "1K" V 10435 5550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10480 5550 50  0001 C CNN
F 3 "~" H 10550 5550 50  0001 C CNN
	1    10550 5550
	0    1    1    0   
$EndComp
$Comp
L Device:R R35
U 1 1 5EABB34B
P 10550 5650
F 0 "R35" V 10343 5650 50  0001 C CNN
F 1 "1K" V 10435 5650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10480 5650 50  0001 C CNN
F 3 "~" H 10550 5650 50  0001 C CNN
	1    10550 5650
	0    1    1    0   
$EndComp
$Comp
L Device:R R36
U 1 1 5EABB608
P 10550 5750
F 0 "R36" V 10343 5750 50  0001 C CNN
F 1 "1K" V 10435 5750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10480 5750 50  0001 C CNN
F 3 "~" H 10550 5750 50  0001 C CNN
	1    10550 5750
	0    1    1    0   
$EndComp
$Comp
L Device:R R37
U 1 1 5EABB7BD
P 10550 5850
F 0 "R37" V 10343 5850 50  0001 C CNN
F 1 "1K" V 10435 5850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10480 5850 50  0001 C CNN
F 3 "~" H 10550 5850 50  0001 C CNN
	1    10550 5850
	0    1    1    0   
$EndComp
$Comp
L Device:R R38
U 1 1 5EABB985
P 10550 5950
F 0 "R38" V 10343 5950 50  0001 C CNN
F 1 "1K" V 10435 5950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10480 5950 50  0001 C CNN
F 3 "~" H 10550 5950 50  0001 C CNN
	1    10550 5950
	0    1    1    0   
$EndComp
$Comp
L Device:C C1
U 1 1 5EAD50B7
P 6850 5350
F 0 "C1" H 6965 5396 50  0001 L CNN
F 1 "10UF" H 6965 5350 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 6888 5200 50  0001 C CNN
F 3 "~" H 6850 5350 50  0001 C CNN
	1    6850 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5EAD587B
P 7050 5350
F 0 "C2" H 7165 5396 50  0001 L CNN
F 1 "10UF" H 7165 5350 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 7088 5200 50  0001 C CNN
F 3 "~" H 7050 5350 50  0001 C CNN
	1    7050 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5EAD5BC1
P 7250 5350
F 0 "C5" H 7365 5396 50  0001 L CNN
F 1 "10UF" H 7365 5350 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 7288 5200 50  0001 C CNN
F 3 "~" H 7250 5350 50  0001 C CNN
	1    7250 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5EAD5EC9
P 7450 5350
F 0 "C6" H 7565 5396 50  0001 L CNN
F 1 "10UF" H 7565 5350 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 7488 5200 50  0001 C CNN
F 3 "~" H 7450 5350 50  0001 C CNN
	1    7450 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 5EAD613C
P 7650 5350
F 0 "C9" H 7765 5396 50  0001 L CNN
F 1 "10UF" H 7765 5350 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 7688 5200 50  0001 C CNN
F 3 "~" H 7650 5350 50  0001 C CNN
	1    7650 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 5200 7050 5200
Connection ~ 7050 5200
Wire Wire Line
	7050 5200 7250 5200
Connection ~ 7250 5200
Wire Wire Line
	7250 5200 7450 5200
Connection ~ 7450 5200
Wire Wire Line
	7450 5200 7650 5200
Wire Wire Line
	7650 5200 7650 4550
Wire Wire Line
	7450 4550 7650 4550
Connection ~ 7650 5200
Connection ~ 7650 4550
Wire Wire Line
	7650 4550 8250 4550
Wire Wire Line
	10000 5050 9000 5050
Wire Wire Line
	8050 5050 8050 5500
Wire Wire Line
	8050 5500 7650 5500
Connection ~ 10000 5050
Connection ~ 7050 5500
Wire Wire Line
	7050 5500 6850 5500
Connection ~ 7250 5500
Wire Wire Line
	7250 5500 7050 5500
Connection ~ 7450 5500
Wire Wire Line
	7450 5500 7250 5500
Connection ~ 7650 5500
Wire Wire Line
	7650 5500 7450 5500
Text GLabel 2900 1000 0    50   Input ~ 0
5
Text GLabel 3400 1000 0    50   Input ~ 0
6
Text GLabel 3900 1000 0    50   Input ~ 0
7
Text GLabel 4400 1000 0    50   Input ~ 0
8
Text GLabel 4900 1000 0    50   Input ~ 0
9
Text GLabel 5400 1000 0    50   Input ~ 0
10
Text GLabel 5900 1000 0    50   Input ~ 0
11
Text GLabel 6400 1000 0    50   Input ~ 0
12
Text GLabel 900  1600 0    50   Input ~ 0
13
Text GLabel 1400 1600 0    50   Input ~ 0
14
Text GLabel 1900 1600 0    50   Input ~ 0
15
Text GLabel 2400 1600 0    50   Input ~ 0
16
Text GLabel 2900 1600 0    50   Input ~ 0
17
Text GLabel 3400 1600 0    50   Input ~ 0
18
Text GLabel 3900 1600 0    50   Input ~ 0
19
Text GLabel 4400 1600 0    50   Input ~ 0
20
Text GLabel 4900 1600 0    50   Input ~ 0
21
Text GLabel 5400 1600 0    50   Input ~ 0
22
Text GLabel 5900 1600 0    50   Input ~ 0
23
Text GLabel 6400 1600 0    50   Input ~ 0
24
Wire Wire Line
	9000 4950 9000 5050
Connection ~ 9000 5050
Wire Wire Line
	9000 5050 8050 5050
Text GLabel 600  1400 1    50   Input ~ 0
A13
Text GLabel 1100 1400 1    50   Input ~ 0
A14
Text GLabel 1600 1400 1    50   Input ~ 0
A15
Text GLabel 2100 1400 1    50   Input ~ 0
A16
Text GLabel 2600 1400 1    50   Input ~ 0
A17
Text GLabel 3100 1400 1    50   Input ~ 0
A18
Text GLabel 3600 1400 1    50   Input ~ 0
A19
Text GLabel 4100 1400 1    50   Input ~ 0
A20
Text GLabel 4600 1400 1    50   Input ~ 0
A21
Text GLabel 5100 1400 1    50   Input ~ 0
A22
Text GLabel 5600 1400 1    50   Input ~ 0
A23
Text GLabel 6100 1400 1    50   Input ~ 0
A24
Text GLabel 3150 1850 1    50   Input ~ 0
10
Text GLabel 3250 1850 1    50   Input ~ 0
11
Text GLabel 3350 1850 1    50   Input ~ 0
12
Text GLabel 3850 1850 1    50   Input ~ 0
13
Text GLabel 3950 1850 1    50   Input ~ 0
14
Text GLabel 4050 1850 1    50   Input ~ 0
15
Text GLabel 4550 1850 1    50   Input ~ 0
16
Text GLabel 4650 1850 1    50   Input ~ 0
17
Text GLabel 4750 1850 1    50   Input ~ 0
18
Text GLabel 5250 1850 1    50   Input ~ 0
19
Text GLabel 5350 1850 1    50   Input ~ 0
20
Text GLabel 5450 1850 1    50   Input ~ 0
21
Text GLabel 5950 1850 1    50   Input ~ 0
22
Text GLabel 6050 1850 1    50   Input ~ 0
23
Text GLabel 6150 1850 1    50   Input ~ 0
24
Text GLabel 3150 2600 1    50   Input ~ 0
10
Text GLabel 3150 3350 1    50   Input ~ 0
10
Text GLabel 3150 4100 1    50   Input ~ 0
10
Text GLabel 3150 4850 1    50   Input ~ 0
10
Text GLabel 3150 5600 1    50   Input ~ 0
10
Text GLabel 3150 6350 1    50   Input ~ 0
10
Text GLabel 3150 7100 1    50   Input ~ 0
10
Text GLabel 3250 2600 1    50   Input ~ 0
11
Text GLabel 3250 3350 1    50   Input ~ 0
11
Text GLabel 3250 4100 1    50   Input ~ 0
11
Text GLabel 3250 4850 1    50   Input ~ 0
11
Text GLabel 3250 5600 1    50   Input ~ 0
11
Text GLabel 3250 6350 1    50   Input ~ 0
11
Text GLabel 3250 7100 1    50   Input ~ 0
11
Text GLabel 3350 2600 1    50   Input ~ 0
12
Text GLabel 3350 3350 1    50   Input ~ 0
12
Text GLabel 3350 4100 1    50   Input ~ 0
12
Text GLabel 3350 4850 1    50   Input ~ 0
12
Text GLabel 3350 5600 1    50   Input ~ 0
12
Text GLabel 3350 6350 1    50   Input ~ 0
12
Text GLabel 3350 7100 1    50   Input ~ 0
12
Text GLabel 3850 2600 1    50   Input ~ 0
13
Text GLabel 3850 3350 1    50   Input ~ 0
13
Text GLabel 3850 4100 1    50   Input ~ 0
13
Text GLabel 3850 4850 1    50   Input ~ 0
13
Text GLabel 3850 5600 1    50   Input ~ 0
13
Text GLabel 3850 6350 1    50   Input ~ 0
13
Text GLabel 3850 7100 1    50   Input ~ 0
13
Text GLabel 3950 2600 1    50   Input ~ 0
14
Text GLabel 3950 3350 1    50   Input ~ 0
14
Text GLabel 3950 4100 1    50   Input ~ 0
14
Text GLabel 3950 4850 1    50   Input ~ 0
14
Text GLabel 3950 5600 1    50   Input ~ 0
14
Text GLabel 3950 6350 1    50   Input ~ 0
14
Text GLabel 3950 7100 1    50   Input ~ 0
14
Text GLabel 4050 2600 1    50   Input ~ 0
15
Text GLabel 4050 3350 1    50   Input ~ 0
15
Text GLabel 4050 4100 1    50   Input ~ 0
15
Text GLabel 4050 4850 1    50   Input ~ 0
15
Text GLabel 4050 5600 1    50   Input ~ 0
15
Text GLabel 4050 6350 1    50   Input ~ 0
15
Text GLabel 4050 7100 1    50   Input ~ 0
15
Text GLabel 4550 2600 1    50   Input ~ 0
16
Text GLabel 4550 3350 1    50   Input ~ 0
16
Text GLabel 4550 4100 1    50   Input ~ 0
16
Text GLabel 4550 4850 1    50   Input ~ 0
16
Text GLabel 4550 5600 1    50   Input ~ 0
16
Text GLabel 4550 6350 1    50   Input ~ 0
16
Text GLabel 4550 7100 1    50   Input ~ 0
16
Text GLabel 4650 2600 1    50   Input ~ 0
17
Text GLabel 4650 3350 1    50   Input ~ 0
17
Text GLabel 4650 4100 1    50   Input ~ 0
17
Text GLabel 4650 4850 1    50   Input ~ 0
17
Text GLabel 4650 5600 1    50   Input ~ 0
17
Text GLabel 4650 6350 1    50   Input ~ 0
17
Text GLabel 4650 7100 1    50   Input ~ 0
17
Text GLabel 4750 2600 1    50   Input ~ 0
18
Text GLabel 4750 3350 1    50   Input ~ 0
18
Text GLabel 4750 4100 1    50   Input ~ 0
18
Text GLabel 4750 4850 1    50   Input ~ 0
18
Text GLabel 4750 5600 1    50   Input ~ 0
18
Text GLabel 4750 6350 1    50   Input ~ 0
18
Text GLabel 4750 7100 1    50   Input ~ 0
18
Text GLabel 5250 2600 1    50   Input ~ 0
19
Text GLabel 5250 3350 1    50   Input ~ 0
19
Text GLabel 5250 4100 1    50   Input ~ 0
19
Text GLabel 5250 4850 1    50   Input ~ 0
19
Text GLabel 5250 5600 1    50   Input ~ 0
19
Text GLabel 5250 6350 1    50   Input ~ 0
19
Text GLabel 5250 7100 1    50   Input ~ 0
19
Text GLabel 5350 2600 1    50   Input ~ 0
20
Text GLabel 5350 3350 1    50   Input ~ 0
20
Text GLabel 5350 4100 1    50   Input ~ 0
20
Text GLabel 5350 4850 1    50   Input ~ 0
20
Text GLabel 5350 5600 1    50   Input ~ 0
20
Text GLabel 5350 6350 1    50   Input ~ 0
20
Text GLabel 5350 7100 1    50   Input ~ 0
20
Text GLabel 5450 2600 1    50   Input ~ 0
21
Text GLabel 5450 3350 1    50   Input ~ 0
21
Text GLabel 5450 4100 1    50   Input ~ 0
21
Text GLabel 5450 4850 1    50   Input ~ 0
21
Text GLabel 5450 5600 1    50   Input ~ 0
21
Text GLabel 5450 6350 1    50   Input ~ 0
21
Text GLabel 5450 7100 1    50   Input ~ 0
21
Text GLabel 5950 2600 1    50   Input ~ 0
22
Text GLabel 5950 3350 1    50   Input ~ 0
22
Text GLabel 5950 4100 1    50   Input ~ 0
22
Text GLabel 5950 4850 1    50   Input ~ 0
22
Text GLabel 5950 5600 1    50   Input ~ 0
22
Text GLabel 5950 6350 1    50   Input ~ 0
22
Text GLabel 5950 7100 1    50   Input ~ 0
22
Text GLabel 6050 2600 1    50   Input ~ 0
23
Text GLabel 6050 3350 1    50   Input ~ 0
23
Text GLabel 6050 4100 1    50   Input ~ 0
23
Text GLabel 6050 4850 1    50   Input ~ 0
23
Text GLabel 6050 5600 1    50   Input ~ 0
23
Text GLabel 6050 6350 1    50   Input ~ 0
23
Text GLabel 6050 7100 1    50   Input ~ 0
23
Text GLabel 6150 2600 1    50   Input ~ 0
24
Text GLabel 6150 3350 1    50   Input ~ 0
24
Text GLabel 6150 4100 1    50   Input ~ 0
24
Text GLabel 6150 4850 1    50   Input ~ 0
24
Text GLabel 6150 5600 1    50   Input ~ 0
24
Text GLabel 6150 6350 1    50   Input ~ 0
24
Text GLabel 6150 7100 1    50   Input ~ 0
24
Text GLabel 1900 5600 1    50   Input ~ 0
6
Text GLabel 1900 6350 1    50   Input ~ 0
6
Text GLabel 850  4700 0    50   Input ~ 0
28
Wire Wire Line
	1150 2450 1700 2450
Wire Wire Line
	800  3200 950  3200
Wire Wire Line
	850  3950 950  3950
Wire Wire Line
	850  4700 950  4700
Wire Wire Line
	850  5450 950  5450
Wire Wire Line
	850  6200 950  6200
Wire Wire Line
	800  6950 950  6950
$Comp
L LED:ASMT-YTC2-0AA02 D9
U 1 1 5D7334A1
P 1800 2150
F 0 "D9" V 1754 2380 50  0000 L CNN
F 1 "ASMT-YTC2-0AA02" V 1845 2380 50  0001 L CNN
F 2 "LED_SMD:LED_RGB_5050-6" H 1600 1830 50  0001 L CNN
F 3 "http://www.avagotech.com/docs/AV02-2589EN" H 1950 2150 50  0001 L CNN
	1    1800 2150
	0    1    1    0   
$EndComp
$Comp
L LED:ASMT-YTC2-0AA02 D17
U 1 1 5D73426C
P 2550 2150
F 0 "D17" V 2504 2380 50  0000 L CNN
F 1 "ASMT-YTC2-0AA02" V 2595 2380 50  0001 L CNN
F 2 "LED_SMD:LED_RGB_5050-6" H 2350 1830 50  0001 L CNN
F 3 "http://www.avagotech.com/docs/AV02-2589EN" H 2700 2150 50  0001 L CNN
	1    2550 2150
	0    1    1    0   
$EndComp
$Comp
L LED:ASMT-YTC2-0AA02 D25
U 1 1 5D734E6D
P 3250 2150
F 0 "D25" V 3204 2380 50  0000 L CNN
F 1 "ASMT-YTC2-0AA02" V 3295 2380 50  0001 L CNN
F 2 "LED_SMD:LED_RGB_5050-6" H 3050 1830 50  0001 L CNN
F 3 "http://www.avagotech.com/docs/AV02-2589EN" H 3400 2150 50  0001 L CNN
	1    3250 2150
	0    1    1    0   
$EndComp
$Comp
L LED:ASMT-YTC2-0AA02 D33
U 1 1 5D735971
P 3950 2150
F 0 "D33" V 3904 2380 50  0000 L CNN
F 1 "ASMT-YTC2-0AA02" V 3995 2380 50  0001 L CNN
F 2 "LED_SMD:LED_RGB_5050-6" H 3750 1830 50  0001 L CNN
F 3 "http://www.avagotech.com/docs/AV02-2589EN" H 4100 2150 50  0001 L CNN
	1    3950 2150
	0    1    1    0   
$EndComp
$Comp
L LED:ASMT-YTC2-0AA02 D41
U 1 1 5D736260
P 4650 2150
F 0 "D41" V 4604 2380 50  0000 L CNN
F 1 "ASMT-YTC2-0AA02" V 4695 2380 50  0001 L CNN
F 2 "LED_SMD:LED_RGB_5050-6" H 4450 1830 50  0001 L CNN
F 3 "http://www.avagotech.com/docs/AV02-2589EN" H 4800 2150 50  0001 L CNN
	1    4650 2150
	0    1    1    0   
$EndComp
$Comp
L LED:ASMT-YTC2-0AA02 D49
U 1 1 5D736E51
P 5350 2150
F 0 "D49" V 5304 2380 50  0000 L CNN
F 1 "ASMT-YTC2-0AA02" V 5395 2380 50  0001 L CNN
F 2 "LED_SMD:LED_RGB_5050-6" H 5150 1830 50  0001 L CNN
F 3 "http://www.avagotech.com/docs/AV02-2589EN" H 5500 2150 50  0001 L CNN
	1    5350 2150
	0    1    1    0   
$EndComp
$Comp
L LED:ASMT-YTC2-0AA02 D57
U 1 1 5D737CB2
P 6050 2150
F 0 "D57" V 6004 2380 50  0000 L CNN
F 1 "ASMT-YTC2-0AA02" V 6095 2380 50  0001 L CNN
F 2 "LED_SMD:LED_RGB_5050-6" H 5850 1830 50  0001 L CNN
F 3 "http://www.avagotech.com/docs/AV02-2589EN" H 6200 2150 50  0001 L CNN
	1    6050 2150
	0    1    1    0   
$EndComp
$Comp
L LED:ASMT-YTC2-0AA02 D2
U 1 1 5D742720
P 1050 2900
F 0 "D2" V 1004 3130 50  0000 L CNN
F 1 "ASMT-YTC2-0AA02" V 1095 3130 50  0001 L CNN
F 2 "LED_SMD:LED_RGB_5050-6" H 850 2580 50  0001 L CNN
F 3 "http://www.avagotech.com/docs/AV02-2589EN" H 1200 2900 50  0001 L CNN
	1    1050 2900
	0    1    1    0   
$EndComp
$Comp
L LED:ASMT-YTC2-0AA02 D10
U 1 1 5D742726
P 1800 2900
F 0 "D10" V 1754 3130 50  0000 L CNN
F 1 "ASMT-YTC2-0AA02" V 1845 3130 50  0001 L CNN
F 2 "LED_SMD:LED_RGB_5050-6" H 1600 2580 50  0001 L CNN
F 3 "http://www.avagotech.com/docs/AV02-2589EN" H 1950 2900 50  0001 L CNN
	1    1800 2900
	0    1    1    0   
$EndComp
$Comp
L LED:ASMT-YTC2-0AA02 D18
U 1 1 5D74272C
P 2550 2900
F 0 "D18" V 2504 3130 50  0000 L CNN
F 1 "ASMT-YTC2-0AA02" V 2595 3130 50  0001 L CNN
F 2 "LED_SMD:LED_RGB_5050-6" H 2350 2580 50  0001 L CNN
F 3 "http://www.avagotech.com/docs/AV02-2589EN" H 2700 2900 50  0001 L CNN
	1    2550 2900
	0    1    1    0   
$EndComp
$Comp
L LED:ASMT-YTC2-0AA02 D26
U 1 1 5D742732
P 3250 2900
F 0 "D26" V 3204 3130 50  0000 L CNN
F 1 "ASMT-YTC2-0AA02" V 3295 3130 50  0001 L CNN
F 2 "LED_SMD:LED_RGB_5050-6" H 3050 2580 50  0001 L CNN
F 3 "http://www.avagotech.com/docs/AV02-2589EN" H 3400 2900 50  0001 L CNN
	1    3250 2900
	0    1    1    0   
$EndComp
$Comp
L LED:ASMT-YTC2-0AA02 D34
U 1 1 5D742738
P 3950 2900
F 0 "D34" V 3904 3130 50  0000 L CNN
F 1 "ASMT-YTC2-0AA02" V 3995 3130 50  0001 L CNN
F 2 "LED_SMD:LED_RGB_5050-6" H 3750 2580 50  0001 L CNN
F 3 "http://www.avagotech.com/docs/AV02-2589EN" H 4100 2900 50  0001 L CNN
	1    3950 2900
	0    1    1    0   
$EndComp
$Comp
L LED:ASMT-YTC2-0AA02 D42
U 1 1 5D74273E
P 4650 2900
F 0 "D42" V 4604 3130 50  0000 L CNN
F 1 "ASMT-YTC2-0AA02" V 4695 3130 50  0001 L CNN
F 2 "LED_SMD:LED_RGB_5050-6" H 4450 2580 50  0001 L CNN
F 3 "http://www.avagotech.com/docs/AV02-2589EN" H 4800 2900 50  0001 L CNN
	1    4650 2900
	0    1    1    0   
$EndComp
$Comp
L LED:ASMT-YTC2-0AA02 D50
U 1 1 5D742744
P 5350 2900
F 0 "D50" V 5304 3130 50  0000 L CNN
F 1 "ASMT-YTC2-0AA02" V 5395 3130 50  0001 L CNN
F 2 "LED_SMD:LED_RGB_5050-6" H 5150 2580 50  0001 L CNN
F 3 "http://www.avagotech.com/docs/AV02-2589EN" H 5500 2900 50  0001 L CNN
	1    5350 2900
	0    1    1    0   
$EndComp
$Comp
L LED:ASMT-YTC2-0AA02 D58
U 1 1 5D74274A
P 6050 2900
F 0 "D58" V 6004 3130 50  0000 L CNN
F 1 "ASMT-YTC2-0AA02" V 6095 3130 50  0001 L CNN
F 2 "LED_SMD:LED_RGB_5050-6" H 5850 2580 50  0001 L CNN
F 3 "http://www.avagotech.com/docs/AV02-2589EN" H 6200 2900 50  0001 L CNN
	1    6050 2900
	0    1    1    0   
$EndComp
$Comp
L LED:ASMT-YTC2-0AA02 D3
U 1 1 5D74FE11
P 1050 3650
F 0 "D3" V 1004 3880 50  0000 L CNN
F 1 "ASMT-YTC2-0AA02" V 1095 3880 50  0001 L CNN
F 2 "LED_SMD:LED_RGB_5050-6" H 850 3330 50  0001 L CNN
F 3 "http://www.avagotech.com/docs/AV02-2589EN" H 1200 3650 50  0001 L CNN
	1    1050 3650
	0    1    1    0   
$EndComp
$Comp
L LED:ASMT-YTC2-0AA02 D11
U 1 1 5D74FE17
P 1800 3650
F 0 "D11" V 1754 3880 50  0000 L CNN
F 1 "ASMT-YTC2-0AA02" V 1845 3880 50  0001 L CNN
F 2 "LED_SMD:LED_RGB_5050-6" H 1600 3330 50  0001 L CNN
F 3 "http://www.avagotech.com/docs/AV02-2589EN" H 1950 3650 50  0001 L CNN
	1    1800 3650
	0    1    1    0   
$EndComp
$Comp
L LED:ASMT-YTC2-0AA02 D19
U 1 1 5D74FE1D
P 2550 3650
F 0 "D19" V 2504 3880 50  0000 L CNN
F 1 "ASMT-YTC2-0AA02" V 2595 3880 50  0001 L CNN
F 2 "LED_SMD:LED_RGB_5050-6" H 2350 3330 50  0001 L CNN
F 3 "http://www.avagotech.com/docs/AV02-2589EN" H 2700 3650 50  0001 L CNN
	1    2550 3650
	0    1    1    0   
$EndComp
$Comp
L LED:ASMT-YTC2-0AA02 D27
U 1 1 5D74FE23
P 3250 3650
F 0 "D27" V 3204 3880 50  0000 L CNN
F 1 "ASMT-YTC2-0AA02" V 3295 3880 50  0001 L CNN
F 2 "LED_SMD:LED_RGB_5050-6" H 3050 3330 50  0001 L CNN
F 3 "http://www.avagotech.com/docs/AV02-2589EN" H 3400 3650 50  0001 L CNN
	1    3250 3650
	0    1    1    0   
$EndComp
$Comp
L LED:ASMT-YTC2-0AA02 D35
U 1 1 5D74FE29
P 3950 3650
F 0 "D35" V 3904 3880 50  0000 L CNN
F 1 "ASMT-YTC2-0AA02" V 3995 3880 50  0001 L CNN
F 2 "LED_SMD:LED_RGB_5050-6" H 3750 3330 50  0001 L CNN
F 3 "http://www.avagotech.com/docs/AV02-2589EN" H 4100 3650 50  0001 L CNN
	1    3950 3650
	0    1    1    0   
$EndComp
$Comp
L LED:ASMT-YTC2-0AA02 D43
U 1 1 5D74FE2F
P 4650 3650
F 0 "D43" V 4604 3880 50  0000 L CNN
F 1 "ASMT-YTC2-0AA02" V 4695 3880 50  0001 L CNN
F 2 "LED_SMD:LED_RGB_5050-6" H 4450 3330 50  0001 L CNN
F 3 "http://www.avagotech.com/docs/AV02-2589EN" H 4800 3650 50  0001 L CNN
	1    4650 3650
	0    1    1    0   
$EndComp
$Comp
L LED:ASMT-YTC2-0AA02 D51
U 1 1 5D74FE35
P 5350 3650
F 0 "D51" V 5304 3880 50  0000 L CNN
F 1 "ASMT-YTC2-0AA02" V 5395 3880 50  0001 L CNN
F 2 "LED_SMD:LED_RGB_5050-6" H 5150 3330 50  0001 L CNN
F 3 "http://www.avagotech.com/docs/AV02-2589EN" H 5500 3650 50  0001 L CNN
	1    5350 3650
	0    1    1    0   
$EndComp
$Comp
L LED:ASMT-YTC2-0AA02 D59
U 1 1 5D74FE3B
P 6050 3650
F 0 "D59" V 6004 3880 50  0000 L CNN
F 1 "ASMT-YTC2-0AA02" V 6095 3880 50  0001 L CNN
F 2 "LED_SMD:LED_RGB_5050-6" H 5850 3330 50  0001 L CNN
F 3 "http://www.avagotech.com/docs/AV02-2589EN" H 6200 3650 50  0001 L CNN
	1    6050 3650
	0    1    1    0   
$EndComp
$Comp
L LED:ASMT-YTC2-0AA02 D4
U 1 1 5D767602
P 1050 4400
F 0 "D4" V 1004 4630 50  0000 L CNN
F 1 "ASMT-YTC2-0AA02" V 1095 4630 50  0001 L CNN
F 2 "LED_SMD:LED_RGB_5050-6" H 850 4080 50  0001 L CNN
F 3 "http://www.avagotech.com/docs/AV02-2589EN" H 1200 4400 50  0001 L CNN
	1    1050 4400
	0    1    1    0   
$EndComp
$Comp
L LED:ASMT-YTC2-0AA02 D12
U 1 1 5D767608
P 1800 4400
F 0 "D12" V 1754 4630 50  0000 L CNN
F 1 "ASMT-YTC2-0AA02" V 1845 4630 50  0001 L CNN
F 2 "LED_SMD:LED_RGB_5050-6" H 1600 4080 50  0001 L CNN
F 3 "http://www.avagotech.com/docs/AV02-2589EN" H 1950 4400 50  0001 L CNN
	1    1800 4400
	0    1    1    0   
$EndComp
$Comp
L LED:ASMT-YTC2-0AA02 D20
U 1 1 5D76760E
P 2550 4400
F 0 "D20" V 2504 4630 50  0000 L CNN
F 1 "ASMT-YTC2-0AA02" V 2595 4630 50  0001 L CNN
F 2 "LED_SMD:LED_RGB_5050-6" H 2350 4080 50  0001 L CNN
F 3 "http://www.avagotech.com/docs/AV02-2589EN" H 2700 4400 50  0001 L CNN
	1    2550 4400
	0    1    1    0   
$EndComp
$Comp
L LED:ASMT-YTC2-0AA02 D28
U 1 1 5D767614
P 3250 4400
F 0 "D28" V 3204 4630 50  0000 L CNN
F 1 "ASMT-YTC2-0AA02" V 3295 4630 50  0001 L CNN
F 2 "LED_SMD:LED_RGB_5050-6" H 3050 4080 50  0001 L CNN
F 3 "http://www.avagotech.com/docs/AV02-2589EN" H 3400 4400 50  0001 L CNN
	1    3250 4400
	0    1    1    0   
$EndComp
$Comp
L LED:ASMT-YTC2-0AA02 D36
U 1 1 5D76761A
P 3950 4400
F 0 "D36" V 3904 4630 50  0000 L CNN
F 1 "ASMT-YTC2-0AA02" V 3995 4630 50  0001 L CNN
F 2 "LED_SMD:LED_RGB_5050-6" H 3750 4080 50  0001 L CNN
F 3 "http://www.avagotech.com/docs/AV02-2589EN" H 4100 4400 50  0001 L CNN
	1    3950 4400
	0    1    1    0   
$EndComp
$Comp
L LED:ASMT-YTC2-0AA02 D44
U 1 1 5D767620
P 4650 4400
F 0 "D44" V 4604 4630 50  0000 L CNN
F 1 "ASMT-YTC2-0AA02" V 4695 4630 50  0001 L CNN
F 2 "LED_SMD:LED_RGB_5050-6" H 4450 4080 50  0001 L CNN
F 3 "http://www.avagotech.com/docs/AV02-2589EN" H 4800 4400 50  0001 L CNN
	1    4650 4400
	0    1    1    0   
$EndComp
$Comp
L LED:ASMT-YTC2-0AA02 D52
U 1 1 5D767626
P 5350 4400
F 0 "D52" V 5304 4630 50  0000 L CNN
F 1 "ASMT-YTC2-0AA02" V 5395 4630 50  0001 L CNN
F 2 "LED_SMD:LED_RGB_5050-6" H 5150 4080 50  0001 L CNN
F 3 "http://www.avagotech.com/docs/AV02-2589EN" H 5500 4400 50  0001 L CNN
	1    5350 4400
	0    1    1    0   
$EndComp
$Comp
L LED:ASMT-YTC2-0AA02 D60
U 1 1 5D76762C
P 6050 4400
F 0 "D60" V 6004 4630 50  0000 L CNN
F 1 "ASMT-YTC2-0AA02" V 6095 4630 50  0001 L CNN
F 2 "LED_SMD:LED_RGB_5050-6" H 5850 4080 50  0001 L CNN
F 3 "http://www.avagotech.com/docs/AV02-2589EN" H 6200 4400 50  0001 L CNN
	1    6050 4400
	0    1    1    0   
$EndComp
$Comp
L LED:ASMT-YTC2-0AA02 D5
U 1 1 5D773281
P 1050 5150
F 0 "D5" V 1004 5380 50  0000 L CNN
F 1 "ASMT-YTC2-0AA02" V 1095 5380 50  0001 L CNN
F 2 "LED_SMD:LED_RGB_5050-6" H 850 4830 50  0001 L CNN
F 3 "http://www.avagotech.com/docs/AV02-2589EN" H 1200 5150 50  0001 L CNN
	1    1050 5150
	0    1    1    0   
$EndComp
$Comp
L LED:ASMT-YTC2-0AA02 D13
U 1 1 5D773287
P 1800 5150
F 0 "D13" V 1754 5380 50  0000 L CNN
F 1 "ASMT-YTC2-0AA02" V 1845 5380 50  0001 L CNN
F 2 "LED_SMD:LED_RGB_5050-6" H 1600 4830 50  0001 L CNN
F 3 "http://www.avagotech.com/docs/AV02-2589EN" H 1950 5150 50  0001 L CNN
	1    1800 5150
	0    1    1    0   
$EndComp
$Comp
L LED:ASMT-YTC2-0AA02 D21
U 1 1 5D77328D
P 2550 5150
F 0 "D21" V 2504 5380 50  0000 L CNN
F 1 "ASMT-YTC2-0AA02" V 2595 5380 50  0001 L CNN
F 2 "LED_SMD:LED_RGB_5050-6" H 2350 4830 50  0001 L CNN
F 3 "http://www.avagotech.com/docs/AV02-2589EN" H 2700 5150 50  0001 L CNN
	1    2550 5150
	0    1    1    0   
$EndComp
$Comp
L LED:ASMT-YTC2-0AA02 D29
U 1 1 5D773293
P 3250 5150
F 0 "D29" V 3204 5380 50  0000 L CNN
F 1 "ASMT-YTC2-0AA02" V 3295 5380 50  0001 L CNN
F 2 "LED_SMD:LED_RGB_5050-6" H 3050 4830 50  0001 L CNN
F 3 "http://www.avagotech.com/docs/AV02-2589EN" H 3400 5150 50  0001 L CNN
	1    3250 5150
	0    1    1    0   
$EndComp
$Comp
L LED:ASMT-YTC2-0AA02 D37
U 1 1 5D773299
P 3950 5150
F 0 "D37" V 3904 5380 50  0000 L CNN
F 1 "ASMT-YTC2-0AA02" V 3995 5380 50  0001 L CNN
F 2 "LED_SMD:LED_RGB_5050-6" H 3750 4830 50  0001 L CNN
F 3 "http://www.avagotech.com/docs/AV02-2589EN" H 4100 5150 50  0001 L CNN
	1    3950 5150
	0    1    1    0   
$EndComp
$Comp
L LED:ASMT-YTC2-0AA02 D45
U 1 1 5D77329F
P 4650 5150
F 0 "D45" V 4604 5380 50  0000 L CNN
F 1 "ASMT-YTC2-0AA02" V 4695 5380 50  0001 L CNN
F 2 "LED_SMD:LED_RGB_5050-6" H 4450 4830 50  0001 L CNN
F 3 "http://www.avagotech.com/docs/AV02-2589EN" H 4800 5150 50  0001 L CNN
	1    4650 5150
	0    1    1    0   
$EndComp
$Comp
L LED:ASMT-YTC2-0AA02 D53
U 1 1 5D7732A5
P 5350 5150
F 0 "D53" V 5304 5380 50  0000 L CNN
F 1 "ASMT-YTC2-0AA02" V 5395 5380 50  0001 L CNN
F 2 "LED_SMD:LED_RGB_5050-6" H 5150 4830 50  0001 L CNN
F 3 "http://www.avagotech.com/docs/AV02-2589EN" H 5500 5150 50  0001 L CNN
	1    5350 5150
	0    1    1    0   
$EndComp
$Comp
L LED:ASMT-YTC2-0AA02 D61
U 1 1 5D7732AB
P 6050 5150
F 0 "D61" V 6004 5380 50  0000 L CNN
F 1 "ASMT-YTC2-0AA02" V 6095 5380 50  0001 L CNN
F 2 "LED_SMD:LED_RGB_5050-6" H 5850 4830 50  0001 L CNN
F 3 "http://www.avagotech.com/docs/AV02-2589EN" H 6200 5150 50  0001 L CNN
	1    6050 5150
	0    1    1    0   
$EndComp
$Comp
L LED:ASMT-YTC2-0AA02 D6
U 1 1 5D780532
P 1050 5900
F 0 "D6" V 1004 6130 50  0000 L CNN
F 1 "ASMT-YTC2-0AA02" V 1095 6130 50  0001 L CNN
F 2 "LED_SMD:LED_RGB_5050-6" H 850 5580 50  0001 L CNN
F 3 "http://www.avagotech.com/docs/AV02-2589EN" H 1200 5900 50  0001 L CNN
	1    1050 5900
	0    1    1    0   
$EndComp
$Comp
L LED:ASMT-YTC2-0AA02 D14
U 1 1 5D780538
P 1800 5900
F 0 "D14" V 1754 6130 50  0000 L CNN
F 1 "ASMT-YTC2-0AA02" V 1845 6130 50  0001 L CNN
F 2 "LED_SMD:LED_RGB_5050-6" H 1600 5580 50  0001 L CNN
F 3 "http://www.avagotech.com/docs/AV02-2589EN" H 1950 5900 50  0001 L CNN
	1    1800 5900
	0    1    1    0   
$EndComp
$Comp
L LED:ASMT-YTC2-0AA02 D22
U 1 1 5D78053E
P 2550 5900
F 0 "D22" V 2504 6130 50  0000 L CNN
F 1 "ASMT-YTC2-0AA02" V 2595 6130 50  0001 L CNN
F 2 "LED_SMD:LED_RGB_5050-6" H 2350 5580 50  0001 L CNN
F 3 "http://www.avagotech.com/docs/AV02-2589EN" H 2700 5900 50  0001 L CNN
	1    2550 5900
	0    1    1    0   
$EndComp
$Comp
L LED:ASMT-YTC2-0AA02 D30
U 1 1 5D780544
P 3250 5900
F 0 "D30" V 3204 6130 50  0000 L CNN
F 1 "ASMT-YTC2-0AA02" V 3295 6130 50  0001 L CNN
F 2 "LED_SMD:LED_RGB_5050-6" H 3050 5580 50  0001 L CNN
F 3 "http://www.avagotech.com/docs/AV02-2589EN" H 3400 5900 50  0001 L CNN
	1    3250 5900
	0    1    1    0   
$EndComp
$Comp
L LED:ASMT-YTC2-0AA02 D38
U 1 1 5D78054A
P 3950 5900
F 0 "D38" V 3904 6130 50  0000 L CNN
F 1 "ASMT-YTC2-0AA02" V 3995 6130 50  0001 L CNN
F 2 "LED_SMD:LED_RGB_5050-6" H 3750 5580 50  0001 L CNN
F 3 "http://www.avagotech.com/docs/AV02-2589EN" H 4100 5900 50  0001 L CNN
	1    3950 5900
	0    1    1    0   
$EndComp
$Comp
L LED:ASMT-YTC2-0AA02 D46
U 1 1 5D780550
P 4650 5900
F 0 "D46" V 4604 6130 50  0000 L CNN
F 1 "ASMT-YTC2-0AA02" V 4695 6130 50  0001 L CNN
F 2 "LED_SMD:LED_RGB_5050-6" H 4450 5580 50  0001 L CNN
F 3 "http://www.avagotech.com/docs/AV02-2589EN" H 4800 5900 50  0001 L CNN
	1    4650 5900
	0    1    1    0   
$EndComp
$Comp
L LED:ASMT-YTC2-0AA02 D54
U 1 1 5D780556
P 5350 5900
F 0 "D54" V 5304 6130 50  0000 L CNN
F 1 "ASMT-YTC2-0AA02" V 5395 6130 50  0001 L CNN
F 2 "LED_SMD:LED_RGB_5050-6" H 5150 5580 50  0001 L CNN
F 3 "http://www.avagotech.com/docs/AV02-2589EN" H 5500 5900 50  0001 L CNN
	1    5350 5900
	0    1    1    0   
$EndComp
$Comp
L LED:ASMT-YTC2-0AA02 D62
U 1 1 5D78055C
P 6050 5900
F 0 "D62" V 6004 6130 50  0000 L CNN
F 1 "ASMT-YTC2-0AA02" V 6095 6130 50  0001 L CNN
F 2 "LED_SMD:LED_RGB_5050-6" H 5850 5580 50  0001 L CNN
F 3 "http://www.avagotech.com/docs/AV02-2589EN" H 6200 5900 50  0001 L CNN
	1    6050 5900
	0    1    1    0   
$EndComp
$Comp
L LED:ASMT-YTC2-0AA02 D7
U 1 1 5D78C7D7
P 1050 6650
F 0 "D7" V 1004 6880 50  0000 L CNN
F 1 "ASMT-YTC2-0AA02" V 1095 6880 50  0001 L CNN
F 2 "LED_SMD:LED_RGB_5050-6" H 850 6330 50  0001 L CNN
F 3 "http://www.avagotech.com/docs/AV02-2589EN" H 1200 6650 50  0001 L CNN
	1    1050 6650
	0    1    1    0   
$EndComp
$Comp
L LED:ASMT-YTC2-0AA02 D15
U 1 1 5D78C7DD
P 1800 6650
F 0 "D15" V 1754 6880 50  0000 L CNN
F 1 "ASMT-YTC2-0AA02" V 1845 6880 50  0001 L CNN
F 2 "LED_SMD:LED_RGB_5050-6" H 1600 6330 50  0001 L CNN
F 3 "http://www.avagotech.com/docs/AV02-2589EN" H 1950 6650 50  0001 L CNN
	1    1800 6650
	0    1    1    0   
$EndComp
$Comp
L LED:ASMT-YTC2-0AA02 D23
U 1 1 5D78C7E3
P 2550 6650
F 0 "D23" V 2504 6880 50  0000 L CNN
F 1 "ASMT-YTC2-0AA02" V 2595 6880 50  0001 L CNN
F 2 "LED_SMD:LED_RGB_5050-6" H 2350 6330 50  0001 L CNN
F 3 "http://www.avagotech.com/docs/AV02-2589EN" H 2700 6650 50  0001 L CNN
	1    2550 6650
	0    1    1    0   
$EndComp
$Comp
L LED:ASMT-YTC2-0AA02 D31
U 1 1 5D78C7E9
P 3250 6650
F 0 "D31" V 3204 6880 50  0000 L CNN
F 1 "ASMT-YTC2-0AA02" V 3295 6880 50  0001 L CNN
F 2 "LED_SMD:LED_RGB_5050-6" H 3050 6330 50  0001 L CNN
F 3 "http://www.avagotech.com/docs/AV02-2589EN" H 3400 6650 50  0001 L CNN
	1    3250 6650
	0    1    1    0   
$EndComp
$Comp
L LED:ASMT-YTC2-0AA02 D39
U 1 1 5D78C7EF
P 3950 6650
F 0 "D39" V 3904 6880 50  0000 L CNN
F 1 "ASMT-YTC2-0AA02" V 3995 6880 50  0001 L CNN
F 2 "LED_SMD:LED_RGB_5050-6" H 3750 6330 50  0001 L CNN
F 3 "http://www.avagotech.com/docs/AV02-2589EN" H 4100 6650 50  0001 L CNN
	1    3950 6650
	0    1    1    0   
$EndComp
$Comp
L LED:ASMT-YTC2-0AA02 D47
U 1 1 5D78C7F5
P 4650 6650
F 0 "D47" V 4604 6880 50  0000 L CNN
F 1 "ASMT-YTC2-0AA02" V 4695 6880 50  0001 L CNN
F 2 "LED_SMD:LED_RGB_5050-6" H 4450 6330 50  0001 L CNN
F 3 "http://www.avagotech.com/docs/AV02-2589EN" H 4800 6650 50  0001 L CNN
	1    4650 6650
	0    1    1    0   
$EndComp
$Comp
L LED:ASMT-YTC2-0AA02 D55
U 1 1 5D78C7FB
P 5350 6650
F 0 "D55" V 5304 6880 50  0000 L CNN
F 1 "ASMT-YTC2-0AA02" V 5395 6880 50  0001 L CNN
F 2 "LED_SMD:LED_RGB_5050-6" H 5150 6330 50  0001 L CNN
F 3 "http://www.avagotech.com/docs/AV02-2589EN" H 5500 6650 50  0001 L CNN
	1    5350 6650
	0    1    1    0   
$EndComp
$Comp
L LED:ASMT-YTC2-0AA02 D63
U 1 1 5D78C801
P 6050 6650
F 0 "D63" V 6004 6880 50  0000 L CNN
F 1 "ASMT-YTC2-0AA02" V 6095 6880 50  0001 L CNN
F 2 "LED_SMD:LED_RGB_5050-6" H 5850 6330 50  0001 L CNN
F 3 "http://www.avagotech.com/docs/AV02-2589EN" H 6200 6650 50  0001 L CNN
	1    6050 6650
	0    1    1    0   
$EndComp
$Comp
L LED:ASMT-YTC2-0AA02 D8
U 1 1 5D79FDDC
P 1050 7400
F 0 "D8" V 1004 7630 50  0000 L CNN
F 1 "ASMT-YTC2-0AA02" V 1095 7630 50  0001 L CNN
F 2 "LED_SMD:LED_RGB_5050-6" H 850 7080 50  0001 L CNN
F 3 "http://www.avagotech.com/docs/AV02-2589EN" H 1200 7400 50  0001 L CNN
	1    1050 7400
	0    1    1    0   
$EndComp
$Comp
L LED:ASMT-YTC2-0AA02 D16
U 1 1 5D79FDE2
P 1800 7400
F 0 "D16" V 1754 7630 50  0000 L CNN
F 1 "ASMT-YTC2-0AA02" V 1845 7630 50  0001 L CNN
F 2 "LED_SMD:LED_RGB_5050-6" H 1600 7080 50  0001 L CNN
F 3 "http://www.avagotech.com/docs/AV02-2589EN" H 1950 7400 50  0001 L CNN
	1    1800 7400
	0    1    1    0   
$EndComp
$Comp
L LED:ASMT-YTC2-0AA02 D24
U 1 1 5D79FDE8
P 2550 7400
F 0 "D24" V 2504 7630 50  0000 L CNN
F 1 "ASMT-YTC2-0AA02" V 2595 7630 50  0001 L CNN
F 2 "LED_SMD:LED_RGB_5050-6" H 2350 7080 50  0001 L CNN
F 3 "http://www.avagotech.com/docs/AV02-2589EN" H 2700 7400 50  0001 L CNN
	1    2550 7400
	0    1    1    0   
$EndComp
$Comp
L LED:ASMT-YTC2-0AA02 D32
U 1 1 5D79FDEE
P 3250 7400
F 0 "D32" V 3204 7630 50  0000 L CNN
F 1 "ASMT-YTC2-0AA02" V 3295 7630 50  0001 L CNN
F 2 "LED_SMD:LED_RGB_5050-6" H 3050 7080 50  0001 L CNN
F 3 "http://www.avagotech.com/docs/AV02-2589EN" H 3400 7400 50  0001 L CNN
	1    3250 7400
	0    1    1    0   
$EndComp
$Comp
L LED:ASMT-YTC2-0AA02 D40
U 1 1 5D79FDF4
P 3950 7400
F 0 "D40" V 3904 7630 50  0000 L CNN
F 1 "ASMT-YTC2-0AA02" V 3995 7630 50  0001 L CNN
F 2 "LED_SMD:LED_RGB_5050-6" H 3750 7080 50  0001 L CNN
F 3 "http://www.avagotech.com/docs/AV02-2589EN" H 4100 7400 50  0001 L CNN
	1    3950 7400
	0    1    1    0   
$EndComp
$Comp
L LED:ASMT-YTC2-0AA02 D48
U 1 1 5D79FDFA
P 4650 7400
F 0 "D48" V 4604 7630 50  0000 L CNN
F 1 "ASMT-YTC2-0AA02" V 4695 7630 50  0001 L CNN
F 2 "LED_SMD:LED_RGB_5050-6" H 4450 7080 50  0001 L CNN
F 3 "http://www.avagotech.com/docs/AV02-2589EN" H 4800 7400 50  0001 L CNN
	1    4650 7400
	0    1    1    0   
$EndComp
$Comp
L LED:ASMT-YTC2-0AA02 D56
U 1 1 5D79FE00
P 5350 7400
F 0 "D56" V 5304 7630 50  0000 L CNN
F 1 "ASMT-YTC2-0AA02" V 5395 7630 50  0001 L CNN
F 2 "LED_SMD:LED_RGB_5050-6" H 5150 7080 50  0001 L CNN
F 3 "http://www.avagotech.com/docs/AV02-2589EN" H 5500 7400 50  0001 L CNN
	1    5350 7400
	0    1    1    0   
$EndComp
$Comp
L LED:ASMT-YTC2-0AA02 D64
U 1 1 5D79FE06
P 6050 7400
F 0 "D64" V 6004 7630 50  0000 L CNN
F 1 "ASMT-YTC2-0AA02" V 6095 7630 50  0001 L CNN
F 2 "LED_SMD:LED_RGB_5050-6" H 5850 7080 50  0001 L CNN
F 3 "http://www.avagotech.com/docs/AV02-2589EN" H 6200 7400 50  0001 L CNN
	1    6050 7400
	0    1    1    0   
$EndComp
Connection ~ 1700 2450
Wire Wire Line
	1700 2450 1800 2450
Connection ~ 1800 2450
Wire Wire Line
	1800 2450 1900 2450
Connection ~ 1900 2450
Wire Wire Line
	1900 2450 2450 2450
Connection ~ 2450 2450
Wire Wire Line
	2450 2450 2550 2450
Connection ~ 2550 2450
Wire Wire Line
	2550 2450 2650 2450
Connection ~ 2650 2450
Wire Wire Line
	2650 2450 3150 2450
Connection ~ 3150 2450
Wire Wire Line
	3150 2450 3250 2450
Connection ~ 3250 2450
Wire Wire Line
	3250 2450 3350 2450
Connection ~ 3350 2450
Wire Wire Line
	3350 2450 3850 2450
Connection ~ 3850 2450
Wire Wire Line
	3850 2450 3950 2450
Connection ~ 3950 2450
Wire Wire Line
	3950 2450 4050 2450
Connection ~ 4050 2450
Wire Wire Line
	4050 2450 4550 2450
Connection ~ 4550 2450
Wire Wire Line
	4550 2450 4650 2450
Connection ~ 4650 2450
Wire Wire Line
	4650 2450 4750 2450
Connection ~ 4750 2450
Wire Wire Line
	4750 2450 5250 2450
Connection ~ 5250 2450
Wire Wire Line
	5250 2450 5350 2450
Connection ~ 5350 2450
Wire Wire Line
	5350 2450 5450 2450
Connection ~ 5450 2450
Wire Wire Line
	5450 2450 5950 2450
Connection ~ 5950 2450
Wire Wire Line
	5950 2450 6050 2450
Connection ~ 6050 2450
Wire Wire Line
	6050 2450 6150 2450
Connection ~ 950  3200
Wire Wire Line
	950  3200 1050 3200
Connection ~ 1050 3200
Wire Wire Line
	1050 3200 1150 3200
Connection ~ 1150 3200
Wire Wire Line
	1150 3200 1700 3200
Connection ~ 1700 3200
Wire Wire Line
	1700 3200 1800 3200
Connection ~ 1800 3200
Wire Wire Line
	1800 3200 1900 3200
Connection ~ 1900 3200
Wire Wire Line
	1900 3200 2450 3200
Connection ~ 2450 3200
Wire Wire Line
	2450 3200 2550 3200
Connection ~ 2550 3200
Wire Wire Line
	2550 3200 2650 3200
Connection ~ 2650 3200
Wire Wire Line
	2650 3200 3150 3200
Connection ~ 3150 3200
Wire Wire Line
	3150 3200 3250 3200
Connection ~ 3250 3200
Wire Wire Line
	3250 3200 3350 3200
Connection ~ 3350 3200
Wire Wire Line
	3350 3200 3850 3200
Connection ~ 3850 3200
Wire Wire Line
	3850 3200 3950 3200
Connection ~ 3950 3200
Wire Wire Line
	3950 3200 4050 3200
Connection ~ 4050 3200
Wire Wire Line
	4050 3200 4550 3200
Connection ~ 4550 3200
Wire Wire Line
	4550 3200 4650 3200
Connection ~ 4650 3200
Wire Wire Line
	4650 3200 4750 3200
Connection ~ 4750 3200
Wire Wire Line
	4750 3200 5250 3200
Connection ~ 5250 3200
Wire Wire Line
	5250 3200 5350 3200
Connection ~ 5350 3200
Wire Wire Line
	5350 3200 5450 3200
Connection ~ 5450 3200
Wire Wire Line
	5450 3200 5950 3200
Connection ~ 5950 3200
Wire Wire Line
	5950 3200 6050 3200
Connection ~ 6050 3200
Wire Wire Line
	6050 3200 6150 3200
Connection ~ 950  3950
Wire Wire Line
	950  3950 1050 3950
Connection ~ 1050 3950
Wire Wire Line
	1050 3950 1150 3950
Connection ~ 1150 3950
Wire Wire Line
	1150 3950 1700 3950
Connection ~ 1700 3950
Wire Wire Line
	1700 3950 1800 3950
Connection ~ 1800 3950
Wire Wire Line
	1800 3950 1900 3950
Connection ~ 1900 3950
Wire Wire Line
	1900 3950 2450 3950
Connection ~ 2450 3950
Wire Wire Line
	2450 3950 2550 3950
Connection ~ 2550 3950
Wire Wire Line
	2550 3950 2650 3950
Connection ~ 2650 3950
Wire Wire Line
	2650 3950 3150 3950
Connection ~ 3150 3950
Wire Wire Line
	3150 3950 3250 3950
Connection ~ 3250 3950
Wire Wire Line
	3250 3950 3350 3950
Connection ~ 3350 3950
Wire Wire Line
	3350 3950 3850 3950
Connection ~ 3850 3950
Wire Wire Line
	3850 3950 3950 3950
Connection ~ 3950 3950
Wire Wire Line
	3950 3950 4050 3950
Connection ~ 4050 3950
Wire Wire Line
	4050 3950 4550 3950
Connection ~ 4550 3950
Wire Wire Line
	4550 3950 4650 3950
Connection ~ 4650 3950
Wire Wire Line
	4650 3950 4750 3950
Connection ~ 4750 3950
Wire Wire Line
	4750 3950 5250 3950
Connection ~ 5250 3950
Wire Wire Line
	5250 3950 5350 3950
Connection ~ 5350 3950
Wire Wire Line
	5350 3950 5450 3950
Connection ~ 5450 3950
Wire Wire Line
	5450 3950 5950 3950
Connection ~ 5950 3950
Wire Wire Line
	5950 3950 6050 3950
Connection ~ 6050 3950
Wire Wire Line
	6050 3950 6150 3950
Connection ~ 950  4700
Wire Wire Line
	950  4700 1050 4700
Connection ~ 1050 4700
Wire Wire Line
	1050 4700 1150 4700
Connection ~ 1150 4700
Wire Wire Line
	1150 4700 1700 4700
Connection ~ 1700 4700
Wire Wire Line
	1700 4700 1800 4700
Connection ~ 1800 4700
Wire Wire Line
	1800 4700 1900 4700
Connection ~ 1900 4700
Wire Wire Line
	1900 4700 2450 4700
Connection ~ 2450 4700
Wire Wire Line
	2450 4700 2550 4700
Connection ~ 2550 4700
Wire Wire Line
	2550 4700 2650 4700
Connection ~ 2650 4700
Wire Wire Line
	2650 4700 3150 4700
Connection ~ 3150 4700
Wire Wire Line
	3150 4700 3250 4700
Connection ~ 3250 4700
Wire Wire Line
	3250 4700 3350 4700
Connection ~ 3350 4700
Wire Wire Line
	3350 4700 3850 4700
Connection ~ 3850 4700
Wire Wire Line
	3850 4700 3950 4700
Connection ~ 3950 4700
Wire Wire Line
	3950 4700 4050 4700
Connection ~ 4050 4700
Wire Wire Line
	4050 4700 4550 4700
Connection ~ 4550 4700
Wire Wire Line
	4550 4700 4650 4700
Connection ~ 4650 4700
Wire Wire Line
	4650 4700 4750 4700
Connection ~ 4750 4700
Wire Wire Line
	4750 4700 5250 4700
Connection ~ 5250 4700
Wire Wire Line
	5250 4700 5350 4700
Connection ~ 5350 4700
Wire Wire Line
	5350 4700 5450 4700
Connection ~ 5450 4700
Wire Wire Line
	5450 4700 5950 4700
Connection ~ 5950 4700
Wire Wire Line
	5950 4700 6050 4700
Connection ~ 6050 4700
Wire Wire Line
	6050 4700 6150 4700
Connection ~ 950  5450
Wire Wire Line
	950  5450 1050 5450
Connection ~ 1050 5450
Wire Wire Line
	1050 5450 1150 5450
Connection ~ 1150 5450
Wire Wire Line
	1150 5450 1700 5450
Connection ~ 1700 5450
Wire Wire Line
	1700 5450 1800 5450
Connection ~ 1800 5450
Wire Wire Line
	1800 5450 1900 5450
Connection ~ 1900 5450
Wire Wire Line
	1900 5450 2450 5450
Connection ~ 2450 5450
Wire Wire Line
	2450 5450 2550 5450
Connection ~ 2550 5450
Wire Wire Line
	2550 5450 2650 5450
Connection ~ 2650 5450
Wire Wire Line
	2650 5450 3150 5450
Connection ~ 3150 5450
Wire Wire Line
	3150 5450 3250 5450
Connection ~ 3250 5450
Wire Wire Line
	3250 5450 3350 5450
Connection ~ 3350 5450
Wire Wire Line
	3350 5450 3850 5450
Connection ~ 3850 5450
Wire Wire Line
	3850 5450 3950 5450
Connection ~ 3950 5450
Wire Wire Line
	3950 5450 4050 5450
Connection ~ 4050 5450
Wire Wire Line
	4050 5450 4550 5450
Connection ~ 4550 5450
Wire Wire Line
	4550 5450 4650 5450
Connection ~ 4650 5450
Wire Wire Line
	4650 5450 4750 5450
Connection ~ 4750 5450
Wire Wire Line
	4750 5450 5250 5450
Connection ~ 5250 5450
Wire Wire Line
	5250 5450 5350 5450
Connection ~ 5350 5450
Wire Wire Line
	5350 5450 5450 5450
Connection ~ 5450 5450
Wire Wire Line
	5450 5450 5950 5450
Connection ~ 5950 5450
Wire Wire Line
	5950 5450 6050 5450
Connection ~ 6050 5450
Wire Wire Line
	6050 5450 6150 5450
Connection ~ 950  6200
Wire Wire Line
	950  6200 1050 6200
Connection ~ 1050 6200
Wire Wire Line
	1050 6200 1150 6200
Connection ~ 1150 6200
Wire Wire Line
	1150 6200 1700 6200
Connection ~ 1700 6200
Wire Wire Line
	1700 6200 1800 6200
Connection ~ 1800 6200
Wire Wire Line
	1800 6200 1900 6200
Connection ~ 1900 6200
Wire Wire Line
	1900 6200 2450 6200
Connection ~ 2450 6200
Wire Wire Line
	2450 6200 2550 6200
Connection ~ 2550 6200
Wire Wire Line
	2550 6200 2650 6200
Connection ~ 2650 6200
Wire Wire Line
	2650 6200 3150 6200
Connection ~ 3150 6200
Wire Wire Line
	3150 6200 3250 6200
Connection ~ 3250 6200
Wire Wire Line
	3250 6200 3350 6200
Connection ~ 3350 6200
Wire Wire Line
	3350 6200 3850 6200
Connection ~ 3850 6200
Wire Wire Line
	3850 6200 3950 6200
Connection ~ 3950 6200
Wire Wire Line
	3950 6200 4050 6200
Connection ~ 4050 6200
Wire Wire Line
	4050 6200 4550 6200
Connection ~ 4550 6200
Wire Wire Line
	4550 6200 4650 6200
Connection ~ 4650 6200
Wire Wire Line
	4650 6200 4750 6200
Connection ~ 4750 6200
Wire Wire Line
	4750 6200 5250 6200
Connection ~ 5250 6200
Wire Wire Line
	5250 6200 5350 6200
Connection ~ 5350 6200
Wire Wire Line
	5350 6200 5450 6200
Connection ~ 5450 6200
Wire Wire Line
	5450 6200 5950 6200
Connection ~ 5950 6200
Wire Wire Line
	5950 6200 6050 6200
Connection ~ 6050 6200
Wire Wire Line
	6050 6200 6150 6200
Connection ~ 950  6950
Wire Wire Line
	950  6950 1050 6950
Connection ~ 1050 6950
Wire Wire Line
	1050 6950 1150 6950
Connection ~ 1150 6950
Wire Wire Line
	1150 6950 1700 6950
Connection ~ 1700 6950
Wire Wire Line
	1700 6950 1800 6950
Connection ~ 1800 6950
Wire Wire Line
	1800 6950 1900 6950
Connection ~ 1900 6950
Wire Wire Line
	1900 6950 2450 6950
Connection ~ 2450 6950
Wire Wire Line
	2450 6950 2550 6950
Connection ~ 2550 6950
Wire Wire Line
	2550 6950 2650 6950
Connection ~ 2650 6950
Wire Wire Line
	2650 6950 3150 6950
Connection ~ 3150 6950
Wire Wire Line
	3150 6950 3250 6950
Connection ~ 3250 6950
Wire Wire Line
	3250 6950 3350 6950
Connection ~ 3350 6950
Wire Wire Line
	3350 6950 3850 6950
Connection ~ 3850 6950
Wire Wire Line
	3850 6950 3950 6950
Connection ~ 3950 6950
Wire Wire Line
	3950 6950 4050 6950
Connection ~ 4050 6950
Wire Wire Line
	4050 6950 4550 6950
Connection ~ 4550 6950
Wire Wire Line
	4550 6950 4650 6950
Connection ~ 4650 6950
Wire Wire Line
	4650 6950 4750 6950
Connection ~ 4750 6950
Wire Wire Line
	4750 6950 5250 6950
Connection ~ 5250 6950
Wire Wire Line
	5250 6950 5350 6950
Connection ~ 5350 6950
Wire Wire Line
	5350 6950 5450 6950
Connection ~ 5450 6950
Wire Wire Line
	5450 6950 5950 6950
Connection ~ 5950 6950
Wire Wire Line
	5950 6950 6050 6950
Connection ~ 6050 6950
Wire Wire Line
	6050 6950 6150 6950
Wire Wire Line
	800  7700 950  7700
Connection ~ 5450 7700
Connection ~ 950  7700
Wire Wire Line
	950  7700 1050 7700
Connection ~ 1050 7700
Wire Wire Line
	1050 7700 1150 7700
Connection ~ 1150 7700
Wire Wire Line
	1150 7700 1700 7700
Connection ~ 1700 7700
Wire Wire Line
	1700 7700 1800 7700
Connection ~ 1800 7700
Wire Wire Line
	1800 7700 1900 7700
Connection ~ 1900 7700
Wire Wire Line
	1900 7700 2450 7700
Connection ~ 2450 7700
Wire Wire Line
	2450 7700 2550 7700
Connection ~ 2550 7700
Wire Wire Line
	2550 7700 2650 7700
Connection ~ 2650 7700
Wire Wire Line
	2650 7700 3150 7700
Connection ~ 3150 7700
Wire Wire Line
	3150 7700 3250 7700
Connection ~ 3250 7700
Wire Wire Line
	3250 7700 3350 7700
Connection ~ 3350 7700
Wire Wire Line
	3350 7700 3850 7700
Connection ~ 3850 7700
Wire Wire Line
	3850 7700 3950 7700
Connection ~ 3950 7700
Wire Wire Line
	3950 7700 4050 7700
Connection ~ 4050 7700
Wire Wire Line
	4050 7700 4550 7700
Connection ~ 4550 7700
Wire Wire Line
	4550 7700 4650 7700
Connection ~ 4650 7700
Wire Wire Line
	4650 7700 4750 7700
Connection ~ 4750 7700
Wire Wire Line
	4750 7700 5250 7700
Connection ~ 5250 7700
Wire Wire Line
	5250 7700 5350 7700
Connection ~ 5350 7700
Wire Wire Line
	5350 7700 5450 7700
Wire Wire Line
	5450 7700 5950 7700
Connection ~ 5950 7700
Wire Wire Line
	5950 7700 6050 7700
Connection ~ 6050 7700
Wire Wire Line
	6050 7700 6150 7700
Text GLabel 10700 3800 2    50   Input ~ 0
A17
Text GLabel 10700 3900 2    50   Input ~ 0
A18
Text GLabel 10700 4000 2    50   Input ~ 0
A19
Text GLabel 10700 4100 2    50   Input ~ 0
A20
Text GLabel 10700 4200 2    50   Input ~ 0
A21
Text GLabel 10700 4300 2    50   Input ~ 0
A22
Text GLabel 10700 4400 2    50   Input ~ 0
A23
Text GLabel 10700 4500 2    50   Input ~ 0
A24
Text GLabel 10700 5250 2    50   Input ~ 0
25
Text GLabel 10700 5350 2    50   Input ~ 0
26
Text GLabel 10700 5450 2    50   Input ~ 0
27
Text GLabel 10700 5550 2    50   Input ~ 0
28
Text GLabel 10700 5650 2    50   Input ~ 0
29
Text GLabel 10700 5750 2    50   Input ~ 0
30
Text GLabel 10700 5850 2    50   Input ~ 0
31
Text GLabel 10700 5950 2    50   Input ~ 0
32
Wire Wire Line
	9600 1500 9600 1550
Wire Wire Line
	8950 1550 9050 1550
Text Label 9300 1250 2    50   ~ 0
SER
Text Label 9450 1550 2    50   ~ 0
RCLK
Text Label 9350 1650 2    50   ~ 0
OE
$Comp
L Connector_Generic:Conn_01x05 J5
U 1 1 5D7AEF90
P 9250 1450
F 0 "J5" H 9330 1492 50  0000 L CNN
F 1 "Conn_01x05" H 9330 1401 50  0000 L CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x05_P1.27mm_Vertical" H 9250 1450 50  0001 C CNN
F 3 "~" H 9250 1450 50  0001 C CNN
	1    9250 1450
	1    0    0    -1  
$EndComp
Connection ~ 9050 1250
Wire Wire Line
	9050 1250 9350 1250
Connection ~ 9050 1350
Wire Wire Line
	9050 1350 8950 1350
Connection ~ 9050 1450
Wire Wire Line
	9050 1450 9500 1450
Connection ~ 9050 1550
Wire Wire Line
	9050 1550 9600 1550
Connection ~ 9050 1650
Wire Wire Line
	9050 1650 9500 1650
Wire Wire Line
	8950 3650 8950 3550
Wire Wire Line
	8950 3750 9050 3750
Wire Wire Line
	8950 1750 9050 1750
Wire Wire Line
	9050 1750 9050 1800
Wire Wire Line
	9050 1850 9050 1900
Wire Wire Line
	8950 2150 8950 2100
Wire Wire Line
	8950 2250 9050 2250
Wire Wire Line
	9300 2100 9300 3250
Wire Wire Line
	9300 3750 9450 3750
Wire Wire Line
	9450 3750 9450 3500
Wire Wire Line
	9300 3750 9300 4900
Connection ~ 9450 3500
Wire Wire Line
	9450 3500 10000 3500
Wire Wire Line
	9450 3500 9450 3250
Wire Wire Line
	9450 3250 9300 3250
$Comp
L Connector_Generic:Conn_01x02 J8
U 1 1 5D9CFCC9
P 7300 3550
F 0 "J8" H 7380 3542 50  0000 L CNN
F 1 "Conn_01x02" H 7380 3451 50  0000 L CNN
F 2 "Connector_PinHeader_1.00mm:PinHeader_1x02_P1.00mm_Vertical" H 7300 3550 50  0001 C CNN
F 3 "~" H 7300 3550 50  0001 C CNN
	1    7300 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 3650 7100 3900
Wire Wire Line
	7100 3900 6850 3900
Wire Wire Line
	7100 3550 7100 3300
Wire Wire Line
	7100 3300 6850 3300
Wire Wire Line
	8950 1850 9050 1850
Wire Wire Line
	8950 2100 9050 2100
Wire Wire Line
	9000 3350 8950 3350
Wire Wire Line
	8950 1950 9450 1950
Wire Wire Line
	9450 1950 9450 3200
Wire Wire Line
	9450 3200 9550 3200
Wire Wire Line
	9550 3200 9550 3350
Wire Wire Line
	9550 3350 9050 3350
Wire Wire Line
	6900 1250 6900 1000
Wire Wire Line
	6900 1000 6550 1000
Connection ~ 6550 1000
Wire Wire Line
	6550 1000 6550 600 
Text Label 9000 1750 0    50   ~ 0
PB5
Text Label 9000 1850 0    50   ~ 0
pb6
Text Label 9000 1950 0    50   ~ 0
pb7
Text Label 8950 2450 0    50   ~ 0
pd0
Text Label 8950 2550 0    50   ~ 0
pd1
Text Label 8950 2650 0    50   ~ 0
pd2
Text Label 8950 2750 0    50   ~ 0
pd3
Text Label 8950 2850 0    50   ~ 0
pd4
Text Label 8950 2950 0    50   ~ 0
pd5
Text Label 8950 3050 0    50   ~ 0
pd6
Text Label 8950 3150 0    50   ~ 0
pd7
Text Label 9050 3450 0    50   ~ 0
pe6
Text Label 8950 3550 0    50   ~ 0
pf0
Text Label 9050 3700 0    50   ~ 0
pf1
Text Label 8950 3850 0    50   ~ 0
pf4
Wire Wire Line
	8950 4150 9000 4150
Text Label 8950 3950 0    50   ~ 0
pf5
Text Label 8950 4050 0    50   ~ 0
pf6
Text Label 9000 4150 0    50   ~ 0
pf7
Text Label 9000 2000 0    50   ~ 0
pe2
Wire Wire Line
	8950 3550 9050 3550
Wire Wire Line
	8250 6350 8250 4900
Wire Wire Line
	9000 2000 9000 3350
Text Label 8950 2100 0    50   ~ 0
pc6
Text Label 9050 2250 0    50   ~ 0
pc7
Wire Wire Line
	9000 4050 8950 4050
Wire Wire Line
	9000 3950 8950 3950
Wire Wire Line
	9000 3850 8950 3850
Wire Wire Line
	9050 3750 9050 3650
Wire Wire Line
	8950 3450 9050 3450
Wire Wire Line
	9050 2250 9050 2200
Wire Wire Line
	9050 2000 9000 2000
$Comp
L Connector_Generic:Conn_01x05 J6
U 1 1 5D8727DA
P 9250 2000
F 0 "J6" H 9330 2042 50  0000 L CNN
F 1 "Conn_01x05" H 9330 1951 50  0000 L CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x05_P1.27mm_Vertical" H 9250 2000 50  0001 C CNN
F 3 "~" H 9250 2000 50  0001 C CNN
	1    9250 2000
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J4
U 1 1 5D7B65FC
P 9200 3950
F 0 "J4" H 9280 3942 50  0000 L CNN
F 1 "Conn_01x04" H 9280 3851 50  0000 L CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x04_P1.27mm_Vertical" H 9200 3950 50  0001 C CNN
F 3 "~" H 9200 3950 50  0001 C CNN
	1    9200 3950
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J7
U 1 1 5D7B7BCB
P 9250 3450
F 0 "J7" H 9330 3442 50  0000 L CNN
F 1 "Conn_01x04" H 9330 3351 50  0000 L CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x04_P1.27mm_Vertical" H 9250 3450 50  0001 C CNN
F 3 "~" H 9250 3450 50  0001 C CNN
	1    9250 3450
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J3
U 1 1 5D7B5E51
P 9150 2950
F 0 "J3" H 9230 2942 50  0000 L CNN
F 1 "Conn_01x04" H 9230 2851 50  0000 L CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x04_P1.27mm_Vertical" H 9150 2950 50  0001 C CNN
F 3 "~" H 9150 2950 50  0001 C CNN
	1    9150 2950
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J2
U 1 1 5D7B19C0
P 9150 2550
F 0 "J2" H 9230 2542 50  0000 L CNN
F 1 "Conn_01x04" H 9230 2451 50  0000 L CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x04_P1.27mm_Vertical" H 9150 2550 50  0001 C CNN
F 3 "~" H 9150 2550 50  0001 C CNN
	1    9150 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R39
U 1 1 5DD11FAE
P 8400 4900
F 0 "R39" V 8193 4900 50  0001 C CNN
F 1 "1k" V 8285 4900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8330 4900 50  0001 C CNN
F 3 "~" H 8400 4900 50  0001 C CNN
	1    8400 4900
	0    1    1    0   
$EndComp
Connection ~ 8250 4900
Wire Wire Line
	8250 4900 8250 4550
Text GLabel 8550 4900 2    50   Input ~ 0
pe2
$EndSCHEMATC
