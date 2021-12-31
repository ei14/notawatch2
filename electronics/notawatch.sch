EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "Not-A-Watch"
Date "2021-12-26"
Rev "1"
Comp ""
Comment1 "Not-A-Watch"
Comment2 "An 8-bit LED smartwatch"
Comment3 "By Thomas Kaldahl"
Comment4 ""
$EndDescr
$Comp
L LED_matrix:KWM-20882AVB U5
U 1 1 61C11B57
P 9400 4850
F 0 "U5" H 9650 5450 50  0000 C TNN
F 1 "KWM-20882AVB" H 9400 5350 50  0000 C TNN
F 2 "LED_matrix:KVM-20882AVB" H 9400 4350 50  0001 C CNN
F 3 "" H 9400 4350 50  0001 C CNN
	1    9400 4850
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R14
U 1 1 61C2E6F7
P 8500 3600
F 0 "R14" V 8450 3750 50  0000 C CNN
F 1 "470" V 8550 3500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8540 3590 50  0001 C CNN
F 3 "~" H 8500 3600 50  0001 C CNN
	1    8500 3600
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R10
U 1 1 61C2EEF3
P 8250 3700
F 0 "R10" V 8200 3500 50  0000 C CNN
F 1 "470" V 8136 3700 50  0001 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8290 3690 50  0001 C CNN
F 3 "~" H 8250 3700 50  0001 C CNN
	1    8250 3700
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R15
U 1 1 61C30344
P 8500 3800
F 0 "R15" V 8450 3950 50  0000 C CNN
F 1 "470" V 8550 3700 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8540 3790 50  0001 C CNN
F 3 "~" H 8500 3800 50  0001 C CNN
	1    8500 3800
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R16
U 1 1 61C31FBC
P 8500 4000
F 0 "R16" V 8450 4150 50  0000 C CNN
F 1 "470" V 8550 3900 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8540 3990 50  0001 C CNN
F 3 "~" H 8500 4000 50  0001 C CNN
	1    8500 4000
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R12
U 1 1 61C31FC2
P 8250 4100
F 0 "R12" V 8200 3900 50  0000 C CNN
F 1 "470" V 8136 4100 50  0001 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8290 4090 50  0001 C CNN
F 3 "~" H 8250 4100 50  0001 C CNN
	1    8250 4100
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R17
U 1 1 61C31FC8
P 8500 4200
F 0 "R17" V 8450 4350 50  0000 C CNN
F 1 "470" V 8550 4100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8540 4190 50  0001 C CNN
F 3 "~" H 8500 4200 50  0001 C CNN
	1    8500 4200
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R13
U 1 1 61C31FCE
P 8250 4300
F 0 "R13" V 8200 4100 50  0000 C CNN
F 1 "470" V 8136 4300 50  0001 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8290 4290 50  0001 C CNN
F 3 "~" H 8250 4300 50  0001 C CNN
	1    8250 4300
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R11
U 1 1 61C3034A
P 8250 3900
F 0 "R11" V 8200 3700 50  0000 C CNN
F 1 "470" V 8136 3900 50  0001 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8290 3890 50  0001 C CNN
F 3 "~" H 8250 3900 50  0001 C CNN
	1    8250 3900
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 61C05760
P 4750 3850
F 0 "SW1" H 4750 4135 50  0000 C CNN
F 1 "SW_Push" H 4750 4044 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 4750 4050 50  0001 C CNN
F 3 "~" H 4750 4050 50  0001 C CNN
	1    4750 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 3700 1950 3700
$Comp
L power:GND #PWR03
U 1 1 61C58137
P 2700 5500
F 0 "#PWR03" H 2700 5250 50  0001 C CNN
F 1 "GND" H 2705 5327 50  0000 C CNN
F 2 "" H 2700 5500 50  0001 C CNN
F 3 "" H 2700 5500 50  0001 C CNN
	1    2700 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 5100 4550 5300
$Comp
L Device:R_US R2
U 1 1 61CB53CA
P 4100 4200
F 0 "R2" V 4000 4100 50  0000 C TNN
F 1 "10k" V 4050 4300 50  0000 C BNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4140 4190 50  0001 C CNN
F 3 "~" H 4100 4200 50  0001 C CNN
	1    4100 4200
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R3
U 1 1 61CBBE64
P 4100 4300
F 0 "R3" V 4150 4200 50  0000 C TNN
F 1 "10k" V 4150 4400 50  0000 C TNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4140 4290 50  0001 C CNN
F 3 "~" H 4100 4300 50  0001 C CNN
	1    4100 4300
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R4
U 1 1 61CBE704
P 4100 4700
F 0 "R4" V 4000 4600 50  0000 C TNN
F 1 "10k" V 4050 4800 50  0000 C BNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4140 4690 50  0001 C CNN
F 3 "~" H 4100 4700 50  0001 C CNN
	1    4100 4700
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R5
U 1 1 61CBEC9A
P 4100 5100
F 0 "R5" V 4150 5000 50  0000 C TNN
F 1 "10k" V 4200 5200 50  0000 C BNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4140 5090 50  0001 C CNN
F 3 "~" H 4100 5100 50  0001 C CNN
	1    4100 5100
	0    1    1    0   
$EndComp
Wire Wire Line
	3850 4700 3850 4500
Wire Wire Line
	3850 4700 3950 4700
Wire Wire Line
	3850 4200 3850 4100
Wire Wire Line
	3850 4300 3850 4400
Wire Wire Line
	3850 4100 4550 4100
Wire Wire Line
	3850 4500 4450 4500
Connection ~ 3850 4300
Connection ~ 3850 4200
Wire Wire Line
	4950 3850 4950 3700
Connection ~ 4950 3850
Wire Wire Line
	4950 3700 5550 3700
Connection ~ 2700 5500
Connection ~ 2700 3700
Wire Wire Line
	3300 4100 3400 4100
Wire Wire Line
	3400 4100 3400 3200
NoConn ~ 8000 3500
NoConn ~ 8000 3400
NoConn ~ 8000 3300
$Comp
L MCU_Microchip_ATtiny:ATtiny84A-SSU U2
U 1 1 61C19200
P 2700 4600
F 0 "U2" H 2500 4700 50  0000 R CNN
F 1 "ATtiny84A-SSU" H 2950 4600 50  0000 R CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 2700 4600 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc8183.pdf" H 2700 4600 50  0001 C CNN
	1    2700 4600
	1    0    0    -1  
$EndComp
$Comp
L pspice:C C1
U 1 1 61CA6765
P 1950 4150
F 0 "C1" H 2000 4250 50  0000 L CNN
F 1 "22uF" H 2000 4050 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 1950 4150 50  0001 C CNN
F 3 "~" H 1950 4150 50  0001 C CNN
	1    1950 4150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR02
U 1 1 61D4CB50
P 2700 3700
F 0 "#PWR02" H 2700 3550 50  0001 C CNN
F 1 "+5V" H 2715 3873 50  0001 C CNN
F 2 "" H 2700 3700 50  0001 C CNN
F 3 "" H 2700 3700 50  0001 C CNN
	1    2700 3700
	1    0    0    -1  
$EndComp
$Comp
L LED_matrix:HT16K33-24 U4
U 1 1 61C124F7
P 7300 4200
F 0 "U4" H 7000 4300 50  0000 C CNN
F 1 "HT16K33-24" H 7200 4200 50  0000 C CNN
F 2 "Package_SO:SOIC-24W_7.5x15.4mm_P1.27mm" H 6850 5350 50  0001 C CNN
F 3 "" H 6850 5350 50  0001 C CNN
	1    7300 4200
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:AMS1117-5.0 U1
U 1 1 61C892EF
P 1500 4500
F 0 "U1" H 1600 4250 50  0000 L CNN
F 1 "AMS1117-5.0" H 1750 4650 50  0000 R CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 1500 4700 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 1600 4250 50  0001 C CNN
	1    1500 4500
	0    -1   -1   0   
$EndComp
$Comp
L Diode:SM4007 D2
U 1 1 61CA2659
P 1950 5250
F 0 "D2" V 2000 5350 50  0000 C CNN
F 1 "SM4007" V 1900 5450 50  0000 C CNN
F 2 "Diode_SMD:D_MELF" H 1950 5075 50  0001 C CNN
F 3 "http://cdn-reichelt.de/documents/datenblatt/A400/SMD1N400%23DIO.pdf" H 1950 5250 50  0001 C CNN
	1    1950 5250
	0    -1   -1   0   
$EndComp
$Comp
L Diode:SM4007 D1
U 1 1 61D54247
P 900 4500
F 0 "D1" V 946 4420 50  0000 R CNN
F 1 "SM4007" V 855 4420 50  0000 R CNN
F 2 "Diode_SMD:D_MELF" H 900 4325 50  0001 C CNN
F 3 "http://cdn-reichelt.de/documents/datenblatt/A400/SMD1N400%23DIO.pdf" H 900 4500 50  0001 C CNN
	1    900  4500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	900  4200 1500 4200
Connection ~ 1500 4200
Wire Wire Line
	1950 3700 1950 3900
Connection ~ 1850 3700
Wire Wire Line
	8000 3600 8350 3600
Wire Wire Line
	8100 3700 8000 3700
Wire Wire Line
	8000 3800 8350 3800
Wire Wire Line
	8100 3900 8000 3900
Wire Wire Line
	8000 4000 8350 4000
Wire Wire Line
	8100 4100 8000 4100
Wire Wire Line
	8000 4200 8350 4200
Wire Wire Line
	8100 4300 8000 4300
Wire Wire Line
	8650 3600 8750 3600
Wire Wire Line
	8400 3700 8750 3700
Wire Wire Line
	8750 3800 8650 3800
Wire Wire Line
	8400 3900 8750 3900
Wire Wire Line
	8750 4000 8650 4000
Wire Wire Line
	8400 4100 8750 4100
Wire Wire Line
	8750 4200 8650 4200
Wire Wire Line
	8400 4300 8750 4300
Wire Wire Line
	8000 4500 8750 4500
Wire Wire Line
	8750 4600 8000 4600
Wire Wire Line
	8000 4700 8750 4700
Wire Wire Line
	8750 4800 8000 4800
Wire Wire Line
	8000 4900 8750 4900
Wire Wire Line
	8750 5000 8000 5000
Wire Wire Line
	8000 5100 8750 5100
Wire Wire Line
	8750 5200 8000 5200
NoConn ~ 8000 3200
Wire Wire Line
	5950 5300 5950 5500
Wire Wire Line
	4850 5200 4850 5100
$Comp
L power:+3.3V #PWR04
U 1 1 61D0935A
P 5350 4700
F 0 "#PWR04" H 5350 4550 50  0001 C CNN
F 1 "+3.3V" H 5365 4873 50  0001 C CNN
F 2 "" H 5350 4700 50  0001 C CNN
F 3 "" H 5350 4700 50  0001 C CNN
	1    5350 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 5100 4550 5100
$Comp
L Device:Buzzer BZ1
U 1 1 61C0F706
P 6150 5200
F 0 "BZ1" H 6302 5229 50  0000 L CNN
F 1 "MLT-7525" H 6302 5138 50  0000 L CNN
F 2 "LED_matrix:MLT-7525" V 6125 5300 50  0001 C CNN
F 3 "~" V 6125 5300 50  0001 C CNN
	1    6150 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal Y1
U 1 1 61C0C24A
P 4700 5300
F 0 "Y1" H 4550 5250 50  0000 C CNN
F 1 "32768Hz" H 4650 5150 50  0000 C CNN
F 2 "Crystal:Crystal_Round_D2.0mm_Vertical" H 4700 5300 50  0001 C CNN
F 3 "~" H 4700 5300 50  0001 C CNN
	1    4700 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  4350 900  4200
Wire Wire Line
	900  4650 900  4800
Wire Wire Line
	3850 4200 3950 4200
Wire Wire Line
	3850 4300 3950 4300
Wire Wire Line
	4250 5100 4350 5100
Wire Wire Line
	4250 4700 4350 4700
Wire Wire Line
	4250 4300 4350 4300
Wire Wire Line
	4250 4200 4350 4200
Wire Wire Line
	4350 5100 4350 4700
Connection ~ 4350 4200
Wire Wire Line
	4350 4200 4350 3700
Connection ~ 4350 4300
Wire Wire Line
	4350 4300 4350 4200
Connection ~ 4350 4700
Wire Wire Line
	5950 5300 6050 5300
Wire Wire Line
	5350 5500 5950 5500
Connection ~ 5350 5500
$Comp
L Timer_RTC:DS1307ZN+ U3
U 1 1 61D8FB39
P 5350 5100
F 0 "U3" H 5650 4750 50  0000 L CNN
F 1 "DS1307ZN+" H 5400 5450 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5350 4600 50  0001 C CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/DS1307.pdf" H 5350 5100 50  0001 C CNN
	1    5350 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 5100 3850 4800
Connection ~ 3850 5100
Wire Wire Line
	3850 5100 3950 5100
Wire Wire Line
	3850 4800 4550 4800
Wire Wire Line
	4450 3850 4550 3850
Wire Wire Line
	4950 3700 4350 3700
Connection ~ 4950 3700
Connection ~ 4350 3700
Wire Wire Line
	4450 3850 4450 4500
Connection ~ 5550 3850
Wire Wire Line
	5550 3700 5550 3850
Wire Wire Line
	5050 3850 5150 3850
$Comp
L Switch:SW_Push SW3
U 1 1 61C07877
P 5350 3850
F 0 "SW3" H 5350 4135 50  0000 C CNN
F 1 "SW_Push" H 5350 4044 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 5350 4050 50  0001 C CNN
F 3 "~" H 5350 4050 50  0001 C CNN
	1    5350 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 5400 1950 5500
Wire Wire Line
	1500 3700 1500 4200
Wire Wire Line
	1500 5400 1500 5500
Connection ~ 1950 3700
Wire Wire Line
	1950 3700 2700 3700
Wire Wire Line
	1950 4400 1950 4500
Connection ~ 1950 5500
Wire Wire Line
	1950 5500 2700 5500
Wire Wire Line
	1500 5500 1950 5500
Wire Wire Line
	1800 4500 1950 4500
Connection ~ 1950 4500
Wire Wire Line
	1950 4500 1950 5100
Wire Wire Line
	5250 4450 5950 4450
Wire Wire Line
	5850 5100 5950 5100
$Comp
L Device:R_US R9
U 1 1 622D271E
P 5950 4800
F 0 "R9" H 6018 4846 50  0000 L CNN
F 1 "10k" H 6018 4755 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5990 4790 50  0001 C CNN
F 3 "~" H 5950 4800 50  0001 C CNN
	1    5950 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 4450 5950 4650
Wire Wire Line
	5950 4950 5950 5100
Connection ~ 5950 5100
Wire Wire Line
	5950 5100 6050 5100
$Comp
L Device:R_US R8
U 1 1 622F4278
P 4800 4750
F 0 "R8" H 4750 4950 50  0000 L CNN
F 1 "10k" H 4850 4750 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4840 4740 50  0001 C CNN
F 3 "~" H 4800 4750 50  0001 C CNN
	1    4800 4750
	1    0    0    -1  
$EndComp
Connection ~ 4800 4900
Wire Wire Line
	4800 4900 4850 4900
Wire Wire Line
	4650 4650 4650 4600
$Comp
L Device:R_US R7
U 1 1 622F0957
P 4650 4800
F 0 "R7" H 4600 5050 50  0000 L CNN
F 1 "10k" H 4850 4950 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4690 4790 50  0001 C CNN
F 3 "~" H 4650 4800 50  0001 C CNN
	1    4650 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 4600 4350 4300
Wire Wire Line
	4350 4700 4350 4600
Connection ~ 4350 4600
Wire Wire Line
	4350 4600 4650 4600
Connection ~ 4650 4600
Wire Wire Line
	4650 4600 4800 4600
Wire Wire Line
	5250 4600 5250 4450
Wire Wire Line
	5250 4700 5250 4600
Connection ~ 5250 4600
Connection ~ 4800 4600
Wire Wire Line
	4800 4600 5250 4600
Wire Wire Line
	5150 4400 3850 4400
Wire Wire Line
	4550 4300 4550 4800
Wire Wire Line
	5050 3850 5050 4300
Wire Wire Line
	5050 4300 4550 4300
Wire Wire Line
	5550 4200 5550 3850
Wire Wire Line
	5150 4200 5150 4400
$Comp
L Switch:SW_Push SW4
U 1 1 61C0829D
P 5350 4200
F 0 "SW4" H 5350 4450 50  0000 C CNN
F 1 "SW_Push" H 5350 4350 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 5350 4400 50  0001 C CNN
F 3 "~" H 5350 4400 50  0001 C CNN
	1    5350 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 4200 4950 3850
Wire Wire Line
	4550 4100 4550 4200
$Comp
L Switch:SW_Push SW2
U 1 1 61C07EEE
P 4750 4200
F 0 "SW2" H 4750 4450 50  0000 C CNN
F 1 "SW_Push" H 4750 4350 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 4750 4400 50  0001 C CNN
F 3 "~" H 4750 4400 50  0001 C CNN
	1    4750 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 4950 4650 5000
Wire Wire Line
	4850 5000 4650 5000
Connection ~ 4650 5000
$Comp
L Device:R_US R1
U 1 1 6234FD41
P 3900 3500
F 0 "R1" H 3750 3550 50  0000 L CNN
F 1 "10k" H 3700 3450 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3940 3490 50  0001 C CNN
F 3 "~" H 3900 3500 50  0001 C CNN
	1    3900 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R6
U 1 1 6235A207
P 4150 3500
F 0 "R6" H 4218 3546 50  0000 L CNN
F 1 "10k" H 4218 3455 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4190 3490 50  0001 C CNN
F 3 "~" H 4150 3500 50  0001 C CNN
	1    4150 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 2900 1850 3700
Wire Wire Line
	3300 3300 3300 4000
Wire Wire Line
	4150 3650 4150 3700
Connection ~ 4150 3700
Wire Wire Line
	4150 3700 4350 3700
Connection ~ 3900 3700
Wire Wire Line
	3900 3700 4150 3700
Wire Wire Line
	5950 5500 7300 5500
Connection ~ 5950 5500
Wire Wire Line
	3900 3650 3900 3700
Wire Wire Line
	4150 3350 4150 3200
Connection ~ 4150 3200
Wire Wire Line
	4150 3200 6600 3200
Wire Wire Line
	3900 3350 3900 3300
Connection ~ 3900 3300
Wire Wire Line
	3900 3300 6600 3300
Wire Wire Line
	1500 3700 1850 3700
$Comp
L power:+BATT #PWR0101
U 1 1 6253ED50
P 1300 4800
F 0 "#PWR0101" H 1300 4650 50  0001 C CNN
F 1 "+BATT" H 1150 4850 50  0001 C CNN
F 2 "" H 1300 4800 50  0001 C CNN
F 3 "" H 1300 4800 50  0001 C CNN
	1    1300 4800
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR01
U 1 1 6221E9B6
P 1300 5100
F 0 "#PWR01" H 1300 4950 50  0001 C CNN
F 1 "+3.3V" H 1315 5273 50  0001 C CNN
F 2 "" H 1300 5100 50  0001 C CNN
F 3 "" H 1300 5100 50  0001 C CNN
	1    1300 5100
	1    0    0    -1  
$EndComp
Connection ~ 1300 4800
Wire Wire Line
	1300 4800 1500 4800
Wire Wire Line
	900  4800 1300 4800
$Comp
L LED_matrix:Double_Battery_Cell BT1
U 1 1 62651857
P 1500 5100
F 0 "BT1" H 700 5150 50  0000 L CNN
F 1 "Double_Battery_Cell" H 700 5050 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 2000 5050 50  0001 C CNN
F 3 "" H 2000 5050 50  0001 C CNN
	1    1500 5100
	1    0    0    -1  
$EndComp
Connection ~ 1500 4800
Wire Wire Line
	3850 4700 3750 4700
Wire Wire Line
	3300 4800 3300 4700
Connection ~ 3850 4700
$Comp
L Connector_Generic:Conn_01x04 J1
U 1 1 62695CC5
P 3600 4500
F 0 "J1" V 3500 4200 50  0000 L CNN
F 1 "Conn_01x04" V 3700 4200 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 3600 4500 50  0001 C CNN
F 3 "~" H 3600 4500 50  0001 C CNN
	1    3600 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 4400 3400 4400
Wire Wire Line
	3300 4500 3400 4500
Wire Wire Line
	3400 4600 3300 4600
Wire Wire Line
	3300 4200 3850 4200
Wire Wire Line
	3300 4300 3850 4300
Wire Wire Line
	3400 3200 4150 3200
Wire Wire Line
	3300 3300 3900 3300
Wire Wire Line
	2700 3700 3900 3700
Wire Wire Line
	1850 2900 7300 2900
Wire Wire Line
	2700 5500 5350 5500
Wire Wire Line
	3400 4700 3400 5200
Wire Wire Line
	3400 5200 3300 5200
Wire Wire Line
	3300 5100 3850 5100
Wire Wire Line
	3300 5000 4650 5000
Wire Wire Line
	3300 4900 4800 4900
Wire Wire Line
	3300 4800 3750 4800
Wire Wire Line
	3750 4700 3750 4800
Text Label 1300 5000 2    50   ~ 0
+3V
Text Label 1300 4700 2    50   ~ 0
+6V
Text Label 2700 3600 2    50   ~ 0
+5V
Text Label 5350 4600 0    50   ~ 0
+3V
$EndSCHEMATC
