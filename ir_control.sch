EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:arduino
LIBS:Relay
LIBS:tactile_button
LIBS:shardy
LIBS:ir_control-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "IR Control"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L arduino_pro_mini M1
U 1 1 5B51047F
P 5550 3300
F 0 "M1" H 5550 3900 60  0000 C CNN
F 1 "arduino_pro_mini" H 5550 2600 60  0000 C CNN
F 2 "Galeguinho:arduino_pro_mini" H 5500 4100 60  0001 C CNN
F 3 "https://store.arduino.cc/usa/arduino-pro-mini" H 5600 4000 60  0001 C CNN
	1    5550 3300
	-1   0    0    1   
$EndComp
$Comp
L TSOP17xx U1
U 1 1 5B5114D1
P 2800 3250
F 0 "U1" H 2400 3550 50  0000 L CNN
F 1 "TSOP17xx" H 2400 2950 50  0000 L CNN
F 2 "Opto-Devices:IRReceiver_Vishay_MOLD-3pin" H 2750 2875 50  0001 C CNN
F 3 "" H 3450 3550 50  0000 C CNN
	1    2800 3250
	1    0    0    -1  
$EndComp
Text GLabel 3300 3450 2    60   Input ~ 0
GND
Text GLabel 3300 3050 2    60   Input ~ 0
+5V
Text GLabel 3300 3250 2    60   Input ~ 0
D10
Text GLabel 6250 3000 2    39   Input ~ 0
+5V
Text GLabel 4850 3100 0    39   Input ~ 0
D3
Text GLabel 6250 3200 2    39   Input ~ 0
D11
Text GLabel 4850 2700 0    39   Input ~ 0
D4
Text GLabel 10550 2950 0    60   Input ~ 0
RETORNO2
Text GLabel 10550 3150 0    60   Input ~ 0
RETORNO1
Text GLabel 10550 3350 0    60   Input ~ 0
FASE
Text GLabel 10550 3550 0    60   Input ~ 0
NEUTRO
$Comp
L R_Small R1
U 1 1 5B5F6067
P 3450 1800
F 0 "R1" H 3480 1820 50  0000 L CNN
F 1 "R_Small" H 3480 1760 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 3450 1800 50  0001 C CNN
F 3 "" H 3450 1800 50  0001 C CNN
	1    3450 1800
	1    0    0    -1  
$EndComp
Text GLabel 2650 1900 3    60   Input ~ 0
GND
Text GLabel 3600 1900 2    60   Input ~ 0
D4
Text GLabel 3450 1550 1    60   Input ~ 0
+5V
$Comp
L SW_PUSH SW2
U 1 1 5B5F6070
P 3000 1950
F 0 "SW2" H 3000 2250 60  0000 C CNN
F 1 "SW_PUSH" H 3000 1800 60  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm_h4.3mm" H 3000 1950 60  0001 C CNN
F 3 "" H 3000 1950 60  0000 C CNN
	1    3000 1950
	1    0    0    -1  
$EndComp
$Comp
L R_Small R2
U 1 1 5B612166
P 4850 1800
F 0 "R2" H 4880 1820 50  0000 L CNN
F 1 "R_Small" H 4880 1760 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 4850 1800 50  0001 C CNN
F 3 "" H 4850 1800 50  0001 C CNN
	1    4850 1800
	1    0    0    -1  
$EndComp
Text GLabel 4050 1900 3    60   Input ~ 0
GND
Text GLabel 5000 1900 2    60   Input ~ 0
D3
Text GLabel 4850 1550 1    60   Input ~ 0
+5V
$Comp
L SW_PUSH SW1
U 1 1 5B61216F
P 4400 1950
F 0 "SW1" H 4400 2250 60  0000 C CNN
F 1 "SW_PUSH" H 4400 1800 60  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm_h4.3mm" H 4400 1950 60  0001 C CNN
F 3 "" H 4400 1950 60  0000 C CNN
	1    4400 1950
	1    0    0    -1  
$EndComp
Text GLabel 3800 5400 2    60   Input ~ 0
FASE
Text GLabel 3800 5600 2    60   Input ~ 0
NEUTRO
$Comp
L +5V #PWR01
U 1 1 5B6135CD
P 2450 5350
F 0 "#PWR01" H 2450 5200 50  0001 C CNN
F 1 "+5V" H 2450 5490 50  0000 C CNN
F 2 "" H 2450 5350 50  0001 C CNN
F 3 "" H 2450 5350 50  0001 C CNN
	1    2450 5350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 5B613651
P 2450 5700
F 0 "#PWR02" H 2450 5450 50  0001 C CNN
F 1 "GND" H 2450 5550 50  0000 C CNN
F 2 "" H 2450 5700 50  0001 C CNN
F 3 "" H 2450 5700 50  0001 C CNN
	1    2450 5700
	1    0    0    -1  
$EndComp
$Comp
L Screw_Terminal_1x04 J1
U 1 1 5B613F14
P 10850 3250
F 0 "J1" H 10850 3700 50  0000 C TNN
F 1 "Screw_Terminal_1x04" V 10700 3250 50  0000 C TNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_Pheonix_MKDS1.5-4pol" H 10850 2825 50  0001 C CNN
F 3 "" H 10825 3450 50  0001 C CNN
	1    10850 3250
	-1   0    0    1   
$EndComp
$Comp
L power_supply P?1
U 1 1 5B614609
P 3200 5500
F 0 "P?1" H 3150 5750 60  0000 C CNN
F 1 "power_supply" H 3150 5250 60  0000 C CNN
F 2 "Galeguinho:power_supply" H 3150 5500 60  0001 C CNN
F 3 "" H 3150 5500 60  0001 C CNN
	1    3200 5500
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR03
U 1 1 5B611528
P 8250 4050
F 0 "#PWR03" H 8250 3900 50  0001 C CNN
F 1 "+5V" H 8250 4190 50  0000 C CNN
F 2 "" H 8250 4050 50  0001 C CNN
F 3 "" H 8250 4050 50  0001 C CNN
	1    8250 4050
	1    0    0    -1  
$EndComp
$Comp
L G5LE-1 K2
U 1 1 5B5BB5AF
P 8450 4500
F 0 "K2" H 8900 4650 50  0000 L CNN
F 1 "G5LE-1" H 8900 4550 50  0000 L CNN
F 2 "Relay_THT:Relay_SPDT_Omron-G5LE-1" H 8900 4450 50  0001 L CNN
F 3 "" H 8450 4100 50  0001 C CNN
	1    8450 4500
	1    0    0    -1  
$EndComp
Text GLabel 8650 4900 3    60   Input ~ 0
FASE
Text GLabel 8750 4100 1    60   Input ~ 0
RETORNO1
$Comp
L GND #PWR04
U 1 1 5B52A441
P 8250 5550
F 0 "#PWR04" H 8250 5300 50  0001 C CNN
F 1 "GND" H 8250 5400 50  0000 C CNN
F 2 "" H 8250 5550 50  0001 C CNN
F 3 "" H 8250 5550 50  0001 C CNN
	1    8250 5550
	1    0    0    -1  
$EndComp
Text GLabel 7500 5250 0    60   Input ~ 0
D12
$Comp
L D D2
U 1 1 5B513304
P 7750 4500
F 0 "D2" H 7750 4600 50  0000 C CNN
F 1 "D" H 7750 4400 50  0000 C CNN
F 2 "Diodes_THT:D_DO-15_P5.08mm_Vertical_AnodeUp" H 7750 4500 50  0001 C CNN
F 3 "" H 7750 4500 50  0001 C CNN
	1    7750 4500
	0    1    1    0   
$EndComp
$Comp
L R R4
U 1 1 5B51165B
P 7700 5250
F 0 "R4" V 7780 5250 50  0000 C CNN
F 1 "R" V 7700 5250 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7630 5250 50  0001 C CNN
F 3 "" H 7700 5250 50  0001 C CNN
	1    7700 5250
	0    -1   -1   0   
$EndComp
$Comp
L BC546 Q2
U 1 1 5B511538
P 8150 5250
F 0 "Q2" H 8350 5325 50  0000 L CNN
F 1 "BC546" H 8350 5250 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Molded_Wide_Oval" H 8350 5175 50  0001 L CIN
F 3 "" H 8150 5250 50  0001 L CNN
	1    8150 5250
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR05
U 1 1 5B61621D
P 8350 1800
F 0 "#PWR05" H 8350 1650 50  0001 C CNN
F 1 "+5V" H 8350 1940 50  0000 C CNN
F 2 "" H 8350 1800 50  0001 C CNN
F 3 "" H 8350 1800 50  0001 C CNN
	1    8350 1800
	1    0    0    -1  
$EndComp
$Comp
L G5LE-1 K1
U 1 1 5B616228
P 8550 2250
F 0 "K1" H 9000 2400 50  0000 L CNN
F 1 "G5LE-1" H 9000 2300 50  0000 L CNN
F 2 "Relay_THT:Relay_SPDT_Omron-G5LE-1" H 9000 2200 50  0001 L CNN
F 3 "" H 8550 1850 50  0001 C CNN
	1    8550 2250
	1    0    0    -1  
$EndComp
Text GLabel 8750 2650 3    60   Input ~ 0
FASE
Text GLabel 8850 1850 1    60   Input ~ 0
RETORNO2
$Comp
L GND #PWR06
U 1 1 5B616238
P 8350 3300
F 0 "#PWR06" H 8350 3050 50  0001 C CNN
F 1 "GND" H 8350 3150 50  0000 C CNN
F 2 "" H 8350 3300 50  0001 C CNN
F 3 "" H 8350 3300 50  0001 C CNN
	1    8350 3300
	1    0    0    -1  
$EndComp
Text GLabel 7600 3000 0    60   Input ~ 0
D11
$Comp
L D D1
U 1 1 5B61623F
P 7850 2250
F 0 "D1" H 7850 2350 50  0000 C CNN
F 1 "D" H 7850 2150 50  0000 C CNN
F 2 "Diodes_THT:D_DO-15_P5.08mm_Vertical_AnodeUp" H 7850 2250 50  0001 C CNN
F 3 "" H 7850 2250 50  0001 C CNN
	1    7850 2250
	0    1    1    0   
$EndComp
$Comp
L R R3
U 1 1 5B616245
P 7800 3000
F 0 "R3" V 7880 3000 50  0000 C CNN
F 1 "R" V 7800 3000 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7730 3000 50  0001 C CNN
F 3 "" H 7800 3000 50  0001 C CNN
	1    7800 3000
	0    -1   -1   0   
$EndComp
$Comp
L BC546 Q1
U 1 1 5B61624B
P 8250 3000
F 0 "Q1" H 8450 3075 50  0000 L CNN
F 1 "BC546" H 8450 3000 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Molded_Wide_Oval" H 8450 2925 50  0001 L CIN
F 3 "" H 8250 3000 50  0001 L CNN
	1    8250 3000
	1    0    0    -1  
$EndComp
Text GLabel 6250 3600 2    39   Input ~ 0
D12
Text GLabel 4850 3200 0    39   Input ~ 0
D10
Text GLabel 4850 3000 0    39   Input ~ 0
GND
Text GLabel 6250 2800 2    39   Input ~ 0
GND
Wire Wire Line
	6250 3000 6000 3000
Wire Wire Line
	6250 3700 6000 3700
Wire Wire Line
	10550 3350 10650 3350
Wire Wire Line
	10550 3550 10650 3550
Wire Wire Line
	3300 3250 3200 3250
Wire Wire Line
	3200 3450 3300 3450
Wire Wire Line
	3300 3050 3200 3050
Wire Wire Line
	2650 1900 2800 1900
Wire Wire Line
	3200 1900 3600 1900
Connection ~ 3450 1900
Wire Wire Line
	3450 1550 3450 1700
Wire Wire Line
	4050 1900 4200 1900
Wire Wire Line
	4600 1900 5000 1900
Connection ~ 4850 1900
Wire Wire Line
	4850 1550 4850 1700
Wire Wire Line
	10550 3150 10650 3150
Wire Wire Line
	10550 2950 10650 2950
Wire Wire Line
	3800 5600 3700 5600
Wire Wire Line
	3800 5400 3700 5400
Wire Wire Line
	2450 5350 2450 5400
Wire Wire Line
	2450 5400 2600 5400
Wire Wire Line
	2450 5700 2450 5600
Wire Wire Line
	2450 5600 2600 5600
Wire Wire Line
	8250 4800 8250 5050
Wire Wire Line
	7550 5250 7500 5250
Wire Wire Line
	7750 4650 7750 4900
Wire Wire Line
	7750 4150 7750 4350
Wire Wire Line
	8250 4150 7750 4150
Connection ~ 8250 4900
Wire Wire Line
	7750 4900 8250 4900
Connection ~ 8250 4150
Wire Wire Line
	8650 4900 8650 4800
Wire Wire Line
	8750 4200 8750 4100
Wire Wire Line
	8250 5550 8250 5450
Wire Wire Line
	7850 5250 7950 5250
Wire Wire Line
	8250 4050 8250 4200
Wire Wire Line
	8350 2550 8350 2800
Wire Wire Line
	7650 3000 7600 3000
Wire Wire Line
	7850 2400 7850 2650
Wire Wire Line
	7850 1900 7850 2100
Wire Wire Line
	8350 1900 7850 1900
Connection ~ 8350 2650
Wire Wire Line
	7850 2650 8350 2650
Connection ~ 8350 1900
Wire Wire Line
	8750 2650 8750 2550
Wire Wire Line
	8850 1950 8850 1850
Wire Wire Line
	8350 3300 8350 3200
Wire Wire Line
	7950 3000 8050 3000
Wire Wire Line
	8350 1800 8350 1950
Wire Wire Line
	6250 3600 6000 3600
Wire Wire Line
	6250 3100 6000 3100
Wire Wire Line
	6250 3200 6000 3200
Wire Wire Line
	6250 3300 6000 3300
Wire Wire Line
	6000 3400 6250 3400
Wire Wire Line
	4850 3000 5150 3000
Wire Wire Line
	6000 2800 6250 2800
Wire Wire Line
	4850 2700 5150 2700
Wire Wire Line
	4850 3200 5150 3200
Wire Wire Line
	5150 3100 4850 3100
$EndSCHEMATC
