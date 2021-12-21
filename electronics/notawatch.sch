EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Not-A-Watch"
Date "2021-12-20"
Rev "1"
Comp ""
Comment1 "Not-A-Watch"
Comment2 "An 8-bit LED smartwatch"
Comment3 "By Thomas Kaldahl"
Comment4 ""
$EndDescr
$Comp
L Timer_RTC:DS1307Z+ U2
U 1 1 61C04122
P 5000 5350
F 0 "U2" H 5544 5396 50  0000 L CNN
F 1 "DS1307Z+" H 5544 5305 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5000 4850 50  0001 C CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/DS1307.pdf" H 5000 5350 50  0001 C CNN
	1    5000 5350
	1    0    0    -1  
$EndComp
$Comp
L LED_matrix:KWM-20882AVB U4
U 1 1 61C11B57
P 8800 3750
F 0 "U4" H 8800 4365 50  0000 C CNN
F 1 "KWM-20882AVB" H 8800 4274 50  0000 C CNN
F 2 "LED_matrix:KVM-20882AVB" H 8800 3250 50  0001 C CNN
F 3 "" H 8800 3250 50  0001 C CNN
	1    8800 3750
	1    0    0    -1  
$EndComp
$Comp
L LED_matrix:HT16K33-24 U3
U 1 1 61C124F7
P 6100 3900
F 0 "U3" H 6100 5381 50  0000 C CNN
F 1 "HT16K33-24" H 6100 5290 50  0000 C CNN
F 2 "Package_SO:SOIC-24W_7.5x15.4mm_P1.27mm" H 5650 5050 50  0001 C CNN
F 3 "" H 5650 5050 50  0001 C CNN
	1    6100 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R7
U 1 1 61C2E6F7
P 8000 3400
F 0 "R7" V 7795 3400 50  0000 C CNN
F 1 "470" V 7886 3400 50  0000 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric" V 8040 3390 50  0001 C CNN
F 3 "~" H 8000 3400 50  0001 C CNN
	1    8000 3400
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R5
U 1 1 61C2EEF3
P 7750 3500
F 0 "R5" V 7637 3500 50  0000 C CNN
F 1 "470" V 7636 3500 50  0001 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric" V 7790 3490 50  0001 C CNN
F 3 "~" H 7750 3500 50  0001 C CNN
	1    7750 3500
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R8
U 1 1 61C30344
P 8000 3600
F 0 "R8" V 7887 3600 50  0000 C CNN
F 1 "470" V 7886 3600 50  0001 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric" V 8040 3590 50  0001 C CNN
F 3 "~" H 8000 3600 50  0001 C CNN
	1    8000 3600
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R11
U 1 1 61C31FBC
P 9850 3800
F 0 "R11" V 9737 3800 50  0000 C CNN
F 1 "470" V 9736 3800 50  0001 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric" V 9890 3790 50  0001 C CNN
F 3 "~" H 9850 3800 50  0001 C CNN
	1    9850 3800
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R9
U 1 1 61C31FC2
P 9600 3900
F 0 "R9" V 9487 3900 50  0000 C CNN
F 1 "470" V 9486 3900 50  0001 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric" V 9640 3890 50  0001 C CNN
F 3 "~" H 9600 3900 50  0001 C CNN
	1    9600 3900
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R12
U 1 1 61C31FC8
P 9850 4000
F 0 "R12" V 9737 4000 50  0000 C CNN
F 1 "470" V 9736 4000 50  0001 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric" V 9890 3990 50  0001 C CNN
F 3 "~" H 9850 4000 50  0001 C CNN
	1    9850 4000
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R10
U 1 1 61C31FCE
P 9600 4100
F 0 "R10" V 9487 4100 50  0000 C CNN
F 1 "470" V 9486 4100 50  0001 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric" V 9640 4090 50  0001 C CNN
F 3 "~" H 9600 4100 50  0001 C CNN
	1    9600 4100
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R6
U 1 1 61C3034A
P 7750 3700
F 0 "R6" V 7637 3700 50  0000 C CNN
F 1 "470" V 7636 3700 50  0001 C CNN
F 2 "Resistor_SMD:R_0201_0603Metric" V 7790 3690 50  0001 C CNN
F 3 "~" H 7750 3700 50  0001 C CNN
	1    7750 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	7900 3500 8150 3500
Wire Wire Line
	7900 3700 8150 3700
Wire Wire Line
	9450 3800 9700 3800
Wire Wire Line
	9450 4000 9700 4000
NoConn ~ 3300 5450
NoConn ~ 3300 4650
NoConn ~ 3300 4750
NoConn ~ 3300 4850
$Comp
L Switch:SW_Push SW1
U 1 1 61C05760
P 4600 4050
F 0 "SW1" H 4600 4335 50  0000 C CNN
F 1 "SW_Push" H 4600 4244 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 4600 4250 50  0001 C CNN
F 3 "~" H 4600 4250 50  0001 C CNN
	1    4600 4050
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW3
U 1 1 61C07877
P 5200 4050
F 0 "SW3" H 5200 4335 50  0000 C CNN
F 1 "SW_Push" H 5200 4244 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 5200 4250 50  0001 C CNN
F 3 "~" H 5200 4250 50  0001 C CNN
	1    5200 4050
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 61C07EEE
P 4600 4550
F 0 "SW2" H 4600 4835 50  0000 C CNN
F 1 "SW_Push" H 4600 4744 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 4600 4750 50  0001 C CNN
F 3 "~" H 4600 4750 50  0001 C CNN
	1    4600 4550
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW4
U 1 1 61C0829D
P 5200 4550
F 0 "SW4" H 5200 4835 50  0000 C CNN
F 1 "SW_Push" H 5200 4744 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 5200 4750 50  0001 C CNN
F 3 "~" H 5200 4750 50  0001 C CNN
	1    5200 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal Y1
U 1 1 61C0C24A
P 4350 5550
F 0 "Y1" H 4350 5818 50  0000 C CNN
F 1 "32768Hz" H 4350 5727 50  0000 C CNN
F 2 "Crystal:Crystal_Round_D2.0mm_Vertical" H 4350 5550 50  0001 C CNN
F 3 "~" H 4350 5550 50  0001 C CNN
	1    4350 5550
	1    0    0    -1  
$EndComp
$Comp
L Device:Buzzer BZ1
U 1 1 61C0F706
P 5600 5650
F 0 "BZ1" H 5752 5679 50  0000 L CNN
F 1 "MLT-7525" H 5752 5588 50  0000 L CNN
F 2 "LED_matrix:MLT-7525" V 5575 5750 50  0001 C CNN
F 3 "~" V 5575 5750 50  0001 C CNN
	1    5600 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 5750 2700 5750
Wire Wire Line
	1850 3950 2700 3950
$Comp
L power:GND #PWR02
U 1 1 61C58137
P 2700 5750
F 0 "#PWR02" H 2700 5500 50  0001 C CNN
F 1 "GND" H 2705 5577 50  0000 C CNN
F 2 "" H 2700 5750 50  0001 C CNN
F 3 "" H 2700 5750 50  0001 C CNN
	1    2700 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 5450 4500 5350
Wire Wire Line
	4500 5350 4200 5350
Wire Wire Line
	4200 5350 4200 5550
Wire Wire Line
	4900 4950 5000 4950
$Comp
L Device:R_US R1
U 1 1 61CB53CA
P 3700 4450
F 0 "R1" V 3587 4450 50  0000 C TNN
F 1 "10k" V 3586 4450 50  0000 C BNN
F 2 "Resistor_SMD:R_0201_0603Metric" V 3740 4440 50  0001 C CNN
F 3 "~" H 3700 4450 50  0001 C CNN
	1    3700 4450
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R4
U 1 1 61CBBE64
P 3900 4550
F 0 "R4" V 3787 4550 50  0000 L TNN
F 1 "10k" V 3786 4550 50  0000 L BNN
F 2 "Resistor_SMD:R_0201_0603Metric" V 3940 4540 50  0001 C CNN
F 3 "~" H 3900 4550 50  0001 C CNN
	1    3900 4550
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R2
U 1 1 61CBE704
P 3750 4950
F 0 "R2" V 3637 4950 50  0000 C TNN
F 1 "10k" V 3636 4950 50  0000 C BNN
F 2 "Resistor_SMD:R_0201_0603Metric" V 3790 4940 50  0001 C CNN
F 3 "~" H 3750 4950 50  0001 C CNN
	1    3750 4950
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R3
U 1 1 61CBEC9A
P 3750 5350
F 0 "R3" V 3637 5350 50  0000 C TNN
F 1 "10k" V 3636 5350 50  0000 C BNN
F 2 "Resistor_SMD:R_0201_0603Metric" V 3790 5340 50  0001 C CNN
F 3 "~" H 3750 5350 50  0001 C CNN
	1    3750 5350
	0    1    1    0   
$EndComp
Wire Wire Line
	3500 5350 3500 5050
Wire Wire Line
	3500 5050 4000 5050
Wire Wire Line
	4000 5050 4000 4850
Wire Wire Line
	4900 4850 4900 4050
Wire Wire Line
	4900 4050 5000 4050
Connection ~ 3500 5350
Wire Wire Line
	3500 5350 3600 5350
Wire Wire Line
	3500 4950 3500 4750
Connection ~ 3500 4950
Wire Wire Line
	3500 4950 3600 4950
Wire Wire Line
	3500 4450 3500 4350
Wire Wire Line
	4400 4350 4400 4550
Wire Wire Line
	3500 4550 3500 4650
Wire Wire Line
	5000 4650 5000 4550
Wire Wire Line
	4300 4750 4300 4050
Wire Wire Line
	4300 4050 4400 4050
Wire Wire Line
	3500 4350 4400 4350
Wire Wire Line
	3500 4650 5000 4650
Wire Wire Line
	3500 4750 4300 4750
Wire Wire Line
	4000 4850 4900 4850
Wire Wire Line
	3900 4950 4100 4950
Connection ~ 4100 4950
Wire Wire Line
	4100 4950 4100 5350
Wire Wire Line
	3900 5350 4100 5350
Connection ~ 4100 5350
Wire Wire Line
	4100 5350 4100 5750
Wire Wire Line
	4100 4450 4100 4550
Wire Wire Line
	3850 4450 4100 4450
Wire Wire Line
	4050 4550 4100 4550
Connection ~ 4100 4550
Wire Wire Line
	4100 4550 4100 4950
Wire Wire Line
	3750 4550 3500 4550
Connection ~ 3500 4550
Wire Wire Line
	3500 4450 3550 4450
Connection ~ 3500 4450
Wire Wire Line
	4100 5750 5000 5750
Connection ~ 4100 5750
Wire Wire Line
	4900 4950 4800 4950
Wire Wire Line
	4800 4950 4800 4550
Connection ~ 4900 4950
Connection ~ 4800 4550
Wire Wire Line
	4800 4550 4800 4050
Wire Wire Line
	5000 4950 5400 4950
Wire Wire Line
	5400 4950 5400 4550
Connection ~ 5000 4950
Connection ~ 5400 4550
Wire Wire Line
	5400 4550 5400 4050
Wire Wire Line
	5400 3950 5400 4050
Connection ~ 5400 4050
Wire Wire Line
	4800 4050 4800 3950
Connection ~ 4800 4050
Connection ~ 4800 3950
Wire Wire Line
	4800 3950 5400 3950
Wire Wire Line
	2700 5750 4100 5750
Connection ~ 2700 5750
Connection ~ 2700 3950
Wire Wire Line
	3300 4450 3500 4450
Wire Wire Line
	3300 4550 3500 4550
Wire Wire Line
	3300 4950 3500 4950
Wire Wire Line
	3300 5150 4500 5150
Wire Wire Line
	3300 5250 4500 5250
Wire Wire Line
	3300 5350 3500 5350
Wire Wire Line
	5500 5350 5500 5550
Wire Wire Line
	5500 5750 5000 5750
Connection ~ 5000 5750
Wire Wire Line
	5400 4550 5500 4550
Wire Wire Line
	5500 4550 5500 5200
Wire Wire Line
	5500 5200 6100 5200
Wire Wire Line
	3300 4350 3400 4350
Wire Wire Line
	3400 4350 3400 2900
Wire Wire Line
	3400 2900 5400 2900
Wire Wire Line
	3300 4250 3300 3000
Wire Wire Line
	3300 3000 5400 3000
Wire Wire Line
	8150 3800 8050 3800
Wire Wire Line
	7950 3900 8150 3900
Wire Wire Line
	8150 4000 7850 4000
Wire Wire Line
	7750 4100 8150 4100
Wire Wire Line
	10000 3800 10000 3200
Wire Wire Line
	10100 3100 10100 3900
Wire Wire Line
	9750 3900 10100 3900
Wire Wire Line
	10000 4000 10200 4000
Wire Wire Line
	10200 4000 10200 3000
Wire Wire Line
	10300 2900 10300 4100
Wire Wire Line
	9750 4100 10300 4100
Wire Wire Line
	9450 3700 10400 3700
Wire Wire Line
	6800 4500 6900 4500
Wire Wire Line
	6800 4400 7000 4400
Wire Wire Line
	6800 4300 7100 4300
Wire Wire Line
	6800 4200 7200 4200
Wire Wire Line
	7200 4200 7200 5000
Wire Wire Line
	10500 3600 9450 3600
Wire Wire Line
	7100 4300 7100 5100
Wire Wire Line
	9450 3500 10600 3500
Wire Wire Line
	7000 4400 7000 5200
Wire Wire Line
	10700 3400 9450 3400
Wire Wire Line
	6900 4500 6900 5300
Wire Wire Line
	6800 3300 6900 3300
Wire Wire Line
	6800 3400 7000 3400
Wire Wire Line
	6800 3500 7100 3500
Wire Wire Line
	6800 3600 7200 3600
Wire Wire Line
	6800 4000 7300 4000
Wire Wire Line
	6800 3900 7400 3900
Wire Wire Line
	6800 3800 7500 3800
Wire Wire Line
	7500 3800 7500 3600
Wire Wire Line
	6800 3700 7600 3700
Wire Wire Line
	7400 3500 7600 3500
Wire Wire Line
	7400 3500 7400 3900
Wire Wire Line
	7300 3400 7300 4000
NoConn ~ 6800 3200
NoConn ~ 6800 3100
NoConn ~ 6800 3000
NoConn ~ 6800 2900
Wire Wire Line
	6100 2600 1850 2600
Wire Wire Line
	2700 3950 4800 3950
Wire Wire Line
	1850 2600 1850 3950
Wire Wire Line
	7500 3600 7850 3600
Wire Wire Line
	7300 3400 7850 3400
Wire Wire Line
	6900 2900 10300 2900
Wire Wire Line
	6900 2900 6900 3300
Wire Wire Line
	7000 3000 10200 3000
Wire Wire Line
	7000 3000 7000 3400
Wire Wire Line
	7100 3100 10100 3100
Wire Wire Line
	7100 3100 7100 3500
Wire Wire Line
	7200 3200 10000 3200
Wire Wire Line
	7200 3200 7200 3600
Wire Wire Line
	7750 4600 6800 4600
Wire Wire Line
	7750 4100 7750 4600
Wire Wire Line
	6800 4700 7850 4700
Wire Wire Line
	7850 4000 7850 4700
Wire Wire Line
	7950 4800 6800 4800
Wire Wire Line
	7950 3900 7950 4800
Wire Wire Line
	8050 4900 6800 4900
Wire Wire Line
	8050 3800 8050 4900
Wire Wire Line
	7200 5000 10400 5000
Wire Wire Line
	10400 3700 10400 5000
Wire Wire Line
	10500 5100 7100 5100
Wire Wire Line
	10500 3600 10500 5100
Wire Wire Line
	7000 5200 10600 5200
Wire Wire Line
	10600 3500 10600 5200
Wire Wire Line
	10700 5300 6900 5300
Wire Wire Line
	10700 3400 10700 5300
$Comp
L MCU_Microchip_ATtiny:ATtiny84A-SSU U1
U 1 1 61C19200
P 2700 4850
F 0 "U1" H 2170 4896 50  0000 R CNN
F 1 "ATtiny84A-SSU" H 2170 4805 50  0000 R CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 2700 4850 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc8183.pdf" H 2700 4850 50  0001 C CNN
	1    2700 4850
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery BT1
U 1 1 61C768A2
P 1000 5450
F 0 "BT1" H 1108 5496 50  0000 L CNN
F 1 "6V" H 1108 5405 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Horizontal" V 1000 5510 50  0001 C CNN
F 3 "~" V 1000 5510 50  0001 C CNN
	1    1000 5450
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:SPX3819M5-L-5-0 U5
U 1 1 61C8323D
P 1450 5350
F 0 "U5" H 1450 5692 50  0000 C CNN
F 1 "SPX3819M5-L-5-0" H 1450 5601 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 1450 5675 50  0001 C CNN
F 3 "https://www.exar.com/content/document.ashx?id=22106&languageid=1033&type=Datasheet&partnumber=SPX3819&filename=SPX3819.pdf&part=SPX3819" H 1450 5350 50  0001 C CNN
	1    1450 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 5350 1150 5250
Wire Wire Line
	1000 5250 1150 5250
Connection ~ 1150 5250
Wire Wire Line
	1000 5650 1450 5650
NoConn ~ 1750 5350
$Comp
L pspice:C C1
U 1 1 61CA6765
P 1850 5500
F 0 "C1" H 2028 5546 50  0000 L CNN
F 1 "2.2uF" H 2028 5455 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 1850 5500 50  0001 C CNN
F 3 "~" H 1850 5500 50  0001 C CNN
	1    1850 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 5650 1450 5750
Wire Wire Line
	1450 5750 1850 5750
Connection ~ 1450 5650
Wire Wire Line
	1850 5250 1750 5250
Connection ~ 1850 5750
Wire Wire Line
	1850 5250 1850 3950
Connection ~ 1850 5250
Connection ~ 1850 3950
$Comp
L power:+5V #PWR0101
U 1 1 61D4CB50
P 2700 3950
F 0 "#PWR0101" H 2700 3800 50  0001 C CNN
F 1 "+5V" H 2715 4123 50  0000 C CNN
F 2 "" H 2700 3950 50  0001 C CNN
F 3 "" H 2700 3950 50  0001 C CNN
	1    2700 3950
	1    0    0    -1  
$EndComp
$EndSCHEMATC
