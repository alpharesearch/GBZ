EESchema Schematic File Version 4
LIBS:kicad-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "15 nov 2012"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L kicad-rescue:+5V-power #PWR01
U 1 1 580C1B61
P 3100 950
F 0 "#PWR01" H 3100 800 50  0001 C CNN
F 1 "+5V" H 3100 1090 50  0000 C CNN
F 2 "" H 3100 950 50  0000 C CNN
F 3 "" H 3100 950 50  0000 C CNN
	1    3100 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 950  3100 1100
Wire Wire Line
	3100 1100 2900 1100
Wire Wire Line
	3100 1200 2900 1200
Connection ~ 3100 1100
$Comp
L kicad-rescue:GND-power #PWR02
U 1 1 580C1D11
P 3000 3150
F 0 "#PWR02" H 3000 2900 50  0001 C CNN
F 1 "GND" H 3000 3000 50  0000 C CNN
F 2 "" H 3000 3150 50  0000 C CNN
F 3 "" H 3000 3150 50  0000 C CNN
	1    3000 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 1300 3000 1700
Wire Wire Line
	3000 2700 2900 2700
Wire Wire Line
	3000 2500 2900 2500
Connection ~ 3000 2700
Wire Wire Line
	3000 2000 2900 2000
Connection ~ 3000 2500
Wire Wire Line
	3000 1700 2900 1700
Connection ~ 3000 2000
$Comp
L kicad-rescue:GND-power #PWR03
U 1 1 580C1E01
P 2300 3150
F 0 "#PWR03" H 2300 2900 50  0001 C CNN
F 1 "GND" H 2300 3000 50  0000 C CNN
F 2 "" H 2300 3150 50  0000 C CNN
F 3 "" H 2300 3150 50  0000 C CNN
	1    2300 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 3000 2400 3000
Wire Wire Line
	2300 1500 2300 2300
Wire Wire Line
	2300 2300 2400 2300
Connection ~ 2300 3000
Connection ~ 2200 1100
Wire Wire Line
	2200 1900 2400 1900
Wire Wire Line
	2200 1100 2400 1100
Wire Wire Line
	2200 950  2200 1100
$Comp
L kicad-rescue:+3.3V-power #PWR04
U 1 1 580C1BC1
P 2200 950
F 0 "#PWR04" H 2200 800 50  0001 C CNN
F 1 "+3.3V" H 2200 1090 50  0000 C CNN
F 2 "" H 2200 950 50  0000 C CNN
F 3 "" H 2200 950 50  0000 C CNN
	1    2200 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 1500 2400 1500
Connection ~ 2300 2300
Wire Wire Line
	2400 1200 1250 1200
Wire Wire Line
	1250 1300 2400 1300
Wire Wire Line
	2400 2000 1250 2000
Wire Wire Line
	1250 2100 2400 2100
Wire Wire Line
	1250 2200 2400 2200
Wire Wire Line
	1250 2500 2400 2500
Wire Wire Line
	1250 2600 2400 2600
Wire Wire Line
	1250 2800 2400 2800
Wire Wire Line
	1250 2900 2400 2900
Text Label 1250 1200 0    50   ~ 0
GPIO2(SDA1)
Text Label 1250 1300 0    50   ~ 0
GPIO3(SCL1)
Text Label 1250 1400 0    50   ~ 0
GPIO4(GCLK)
Text Label 1250 1600 0    50   ~ 0
GPIO17(GEN0)
Text Label 1250 1700 0    50   ~ 0
GPIO27(GEN2)
Text Label 1250 1800 0    50   ~ 0
GPIO22(GEN3)
Text Label 1250 2000 0    50   ~ 0
GPIO10(SPI0_MOSI)
Text Label 1250 2100 0    50   ~ 0
GPIO9(SPI0_MISO)
Text Label 1250 2200 0    50   ~ 0
GPIO11(SPI0_SCK)
Text Label 1250 2400 0    50   ~ 0
ID_SD
Text Label 1250 2500 0    50   ~ 0
GPIO5
Text Label 1250 2600 0    50   ~ 0
GPIO6
Text Label 1250 2700 0    50   ~ 0
GPIO13(PWM1)
Text Label 1250 2800 0    50   ~ 0
GPIO19(SPI1_MISO)
Text Label 1250 2900 0    50   ~ 0
GPIO26
Text Label 3950 2900 2    50   ~ 0
GPIO20(SPI1_MOSI)
Text Label 3950 2800 2    50   ~ 0
GPIO16
Text Label 3950 2600 2    50   ~ 0
GPIO12(PWM0)
Text Label 3950 2400 2    50   ~ 0
ID_SC
Text Label 3950 2300 2    50   ~ 0
GPIO7(SPI1_CE_N)
Text Label 3950 2200 2    50   ~ 0
GPIO8(SPI0_CE_N)
Text Label 3950 2100 2    50   ~ 0
GPIO25(GEN6)
Text Label 3950 1900 2    50   ~ 0
GPIO24(GEN5)
Text Label 3950 1800 2    50   ~ 0
GPIO23(GEN4)
Text Label 3950 1600 2    50   ~ 0
GPIO18(GEN1)(PWM0)
Text Label 3950 1500 2    50   ~ 0
GPIO15(RXD0)
Text Label 3950 1400 2    50   ~ 0
GPIO14(TXD0)
Wire Wire Line
	3000 1300 2900 1300
Connection ~ 3000 1700
Text Notes 650  7600 0    50   ~ 0
ID_SD and ID_SC PINS:\nThese pins are reserved for HAT ID EEPROM.\n\nAt boot time this I2C interface will be\ninterrogated to look for an EEPROM\nthat identifes the attached board and\nallows automagic setup of the GPIOs\n(and optionally, Linux drivers).\n\nDO NOT USE these pins for anything other\nthan attaching an I2C ID EEPROM. Leave\nunconnected if ID EEPROM not required.
$Comp
L kicad-rescue:Mounting_Hole-Mechanical MK1
U 1 1 5834FB2E
P 3000 7200
F 0 "MK1" H 3100 7246 50  0000 L CNN
F 1 "M2.5" H 3100 7155 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5" H 3000 7200 60  0001 C CNN
F 3 "" H 3000 7200 60  0001 C CNN
	1    3000 7200
	1    0    0    -1  
$EndComp
$Comp
L kicad-rescue:Mounting_Hole-Mechanical MK3
U 1 1 5834FBEF
P 3450 7200
F 0 "MK3" H 3550 7246 50  0000 L CNN
F 1 "M2.5" H 3550 7155 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5" H 3450 7200 60  0001 C CNN
F 3 "" H 3450 7200 60  0001 C CNN
	1    3450 7200
	1    0    0    -1  
$EndComp
$Comp
L kicad-rescue:Mounting_Hole-Mechanical MK2
U 1 1 5834FC19
P 3000 7400
F 0 "MK2" H 3100 7446 50  0000 L CNN
F 1 "M2.5" H 3100 7355 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5" H 3000 7400 60  0001 C CNN
F 3 "" H 3000 7400 60  0001 C CNN
	1    3000 7400
	1    0    0    -1  
$EndComp
$Comp
L kicad-rescue:Mounting_Hole-Mechanical MK4
U 1 1 5834FC4F
P 3450 7400
F 0 "MK4" H 3550 7446 50  0000 L CNN
F 1 "M2.5" H 3550 7355 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5" H 3450 7400 60  0001 C CNN
F 3 "" H 3450 7400 60  0001 C CNN
	1    3450 7400
	1    0    0    -1  
$EndComp
Text Notes 3000 7050 0    50   ~ 0
Mounting Holes
$Comp
L kicad-rescue:Conn_02x20_Odd_Even-Connector_Generic P1
U 1 1 59AD464A
P 2600 2000
F 0 "P1" H 2650 3117 50  0000 C CNN
F 1 "Conn_02x20_Odd_Even" H 2650 3026 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x20_P2.54mm_Vertical" H -2250 1050 50  0001 C CNN
F 3 "" H -2250 1050 50  0001 C CNN
	1    2600 2000
	1    0    0    -1  
$EndComp
Text Label 3950 3000 2    50   ~ 0
GPIO21(SPI1_SCK)
Wire Wire Line
	3100 1100 3100 1200
Wire Wire Line
	3000 2700 3000 3150
Wire Wire Line
	3000 2500 3000 2700
Wire Wire Line
	3000 2000 3000 2500
Wire Wire Line
	2300 3000 2300 3150
Wire Wire Line
	2200 1100 2200 1900
Wire Wire Line
	2300 2300 2300 3000
Wire Wire Line
	3000 1700 3000 2000
$Comp
L kicad-rescue:+5V-power #PWR05
U 1 1 5B073C56
P 4700 1250
F 0 "#PWR05" H 4700 1100 50  0001 C CNN
F 1 "+5V" H 4700 1390 50  0000 C CNN
F 2 "" H 4700 1250 50  0000 C CNN
F 3 "" H 4700 1250 50  0000 C CNN
	1    4700 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 1250 5150 1250
$Comp
L kicad-rescue:GND-power #PWR06
U 1 1 5B07BD8F
P 4700 1350
F 0 "#PWR06" H 4700 1100 50  0001 C CNN
F 1 "GND" H 4700 1200 50  0000 C CNN
F 2 "" H 4700 1350 50  0000 C CNN
F 3 "" H 4700 1350 50  0000 C CNN
	1    4700 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 1350 5150 1350
Wire Wire Line
	5150 1600 5150 1500
Wire Wire Line
	2900 1600 5150 1600
Wire Wire Line
	5150 1100 5150 600 
Wire Wire Line
	5150 600  850  600 
Wire Wire Line
	850  600  850  2700
Wire Wire Line
	850  2700 2400 2700
$Comp
L New_Library:audio U2
U 1 1 5B083007
P 5650 1300
F 0 "U2" H 5650 1725 50  0000 C CNN
F 1 "audio" H 5650 1634 50  0000 C CNN
F 2 "digikey-footprints:8-DIP" H 5650 1300 50  0001 C CNN
F 3 "" H 5650 1300 50  0001 C CNN
	1    5650 1300
	1    0    0    -1  
$EndComp
$Comp
L New_Library:keyboard U1
U 1 1 5B0830E9
P 5500 2400
F 0 "U1" H 5719 2401 50  0000 L CNN
F 1 "keyboard" H 5719 2310 50  0000 L CNN
F 2 "Seeed-OPL-Connector:H13-2.54" H 5450 2350 50  0001 C CNN
F 3 "" H 5450 2350 50  0001 C CNN
	1    5500 2400
	1    0    0    -1  
$EndComp
$Comp
L kicad-rescue:GND-power #PWR0101
U 1 1 5B083173
P 5050 3050
F 0 "#PWR0101" H 5050 2800 50  0001 C CNN
F 1 "GND" H 5050 2900 50  0000 C CNN
F 2 "" H 5050 3050 50  0000 C CNN
F 3 "" H 5050 3050 50  0000 C CNN
	1    5050 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 3050 5200 3050
$Comp
L New_Library:joystick U4
U 1 1 5B085BAF
P 2500 4650
F 0 "U4" H 2372 4609 50  0000 R CNN
F 1 "joystick" H 2372 4700 50  0000 R CNN
F 2 "" H 2500 4650 50  0001 C CNN
F 3 "" H 2500 4650 50  0001 C CNN
	1    2500 4650
	-1   0    0    1   
$EndComp
$Comp
L New_Library:ADS1015 U3
U 1 1 5B08808E
P 1600 4250
F 0 "U3" H 1656 4925 50  0000 C CNN
F 1 "ADS1015" H 1656 4834 50  0000 C CNN
F 2 "" H 1650 4250 50  0001 C CNN
F 3 "" H 1650 4250 50  0001 C CNN
	1    1600 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 4400 2050 4500
Wire Wire Line
	2050 4500 2200 4600
Wire Wire Line
	2200 4800 2000 4700
Wire Wire Line
	2000 4700 2000 4500
Wire Wire Line
	2000 4500 1900 4500
$Comp
L kicad-rescue:GND-power #PWR09
U 1 1 5B08AD33
P 2100 4900
F 0 "#PWR09" H 2100 4650 50  0001 C CNN
F 1 "GND" H 2100 4750 50  0000 C CNN
F 2 "" H 2100 4900 50  0000 C CNN
F 3 "" H 2100 4900 50  0000 C CNN
	1    2100 4900
	1    0    0    -1  
$EndComp
$Comp
L kicad-rescue:GND-power #PWR08
U 1 1 5B08AD50
P 2100 3800
F 0 "#PWR08" H 2100 3550 50  0001 C CNN
F 1 "GND" H 2100 3650 50  0000 C CNN
F 2 "" H 2100 3800 50  0000 C CNN
F 3 "" H 2100 3800 50  0000 C CNN
	1    2100 3800
	-1   0    0    1   
$EndComp
Wire Wire Line
	1900 3900 2100 3800
$Comp
L kicad-rescue:+3.3V-power #PWR07
U 1 1 5B092829
P 1900 3800
F 0 "#PWR07" H 1900 3650 50  0001 C CNN
F 1 "+3.3V" H 1900 3940 50  0000 C CNN
F 2 "" H 1900 3800 50  0000 C CNN
F 3 "" H 1900 3800 50  0000 C CNN
	1    1900 3800
	1    0    0    -1  
$EndComp
$Comp
L kicad-rescue:+3.3V-power #PWR010
U 1 1 5B092846
P 2200 4450
F 0 "#PWR010" H 2200 4300 50  0001 C CNN
F 1 "+3.3V" H 2200 4590 50  0000 C CNN
F 2 "" H 2200 4450 50  0000 C CNN
F 3 "" H 2200 4450 50  0000 C CNN
	1    2200 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 4500 2200 4450
Wire Wire Line
	2100 4900 2100 4700
Wire Wire Line
	2100 4700 2200 4700
Wire Wire Line
	1900 4400 2050 4400
Wire Wire Line
	1900 4200 2100 4200
Wire Wire Line
	2100 4200 2100 3800
Connection ~ 2100 3800
Wire Wire Line
	1900 4100 2300 4100
Wire Wire Line
	2300 4100 2300 3450
Wire Wire Line
	2300 3450 1000 3450
Wire Wire Line
	1000 3450 1000 2400
Wire Wire Line
	1000 2400 2400 2400
Wire Wire Line
	4100 2400 4100 4000
Wire Wire Line
	4100 4000 1900 4000
Wire Wire Line
	2900 2400 4100 2400
$Comp
L New_Library:power_on_off U5
U 1 1 5B0A81BF
P 4750 4400
F 0 "U5" H 4775 4775 50  0000 C CNN
F 1 "power_on_off" H 4775 4684 50  0000 C CNN
F 2 "" H 4750 4050 50  0001 C CNN
F 3 "" H 4750 4050 50  0001 C CNN
F 4 "config.txt dtoverlay=gpio-poweroff,gpiopin=14,active_low=”y”" H 4750 4400 50  0001 C CNN "GP2"
	1    4750 4400
	1    0    0    -1  
$EndComp
$Comp
L kicad-rescue:GND-power #PWR011
U 1 1 5B0A82E9
P 4150 4350
F 0 "#PWR011" H 4150 4100 50  0001 C CNN
F 1 "GND" H 4150 4200 50  0000 C CNN
F 2 "" H 4150 4350 50  0000 C CNN
F 3 "" H 4150 4350 50  0000 C CNN
	1    4150 4350
	0    1    1    0   
$EndComp
$Comp
L kicad-rescue:+5V-power #PWR012
U 1 1 5B0A8614
P 4800 4900
F 0 "#PWR012" H 4800 4750 50  0001 C CNN
F 1 "+5V" H 4800 5040 50  0000 C CNN
F 2 "" H 4800 4900 50  0000 C CNN
F 3 "" H 4800 4900 50  0000 C CNN
	1    4800 4900
	-1   0    0    1   
$EndComp
$Comp
L Device:Battery_Cell BT1
U 1 1 5B0A86FC
P 5550 4450
F 0 "BT1" H 5432 4454 50  0000 R CNN
F 1 "Battery_Cell" H 5432 4545 50  0000 R CNN
F 2 "" V 5550 4510 50  0001 C CNN
F 3 "~" V 5550 4510 50  0001 C CNN
	1    5550 4450
	-1   0    0    1   
$EndComp
Wire Wire Line
	5550 4350 5250 4350
Wire Wire Line
	5550 4650 5250 4650
Wire Wire Line
	5250 4650 5250 4450
Wire Wire Line
	4800 4900 4800 4800
Wire Wire Line
	4150 4350 4300 4350
$Comp
L Switch:SW_Push SW1
U 1 1 5B0B9BB1
P 5500 4150
F 0 "SW1" H 5500 4435 50  0000 C CNN
F 1 "SW_Push" H 5500 4344 50  0000 C CNN
F 2 "" H 5500 4350 50  0001 C CNN
F 3 "" H 5500 4350 50  0001 C CNN
	1    5500 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 4350 5700 4350
Wire Wire Line
	5700 4350 5700 4150
Connection ~ 5550 4350
Wire Wire Line
	5300 4150 5300 4250
Wire Wire Line
	5300 4250 5250 4250
Wire Wire Line
	4300 4450 3700 4450
Wire Wire Line
	3700 4450 3700 3350
Wire Wire Line
	3700 3350 4200 3350
Wire Wire Line
	4200 3350 4200 1400
Wire Wire Line
	2900 1400 4200 1400
Wire Wire Line
	2900 1500 3950 1500
Wire Wire Line
	4300 4250 4300 700 
Wire Wire Line
	4300 700  1100 700 
Wire Wire Line
	1100 700  1100 1400
Wire Wire Line
	1100 1400 2400 1400
Wire Wire Line
	4600 1800 4600 1850
Wire Wire Line
	4600 1850 5200 1850
Wire Wire Line
	2900 1800 4600 1800
Wire Wire Line
	4600 1900 4600 1950
Wire Wire Line
	4600 1950 5200 1950
Wire Wire Line
	2900 1900 4600 1900
Wire Wire Line
	4600 2100 4600 2050
Wire Wire Line
	4600 2050 5200 2050
Wire Wire Line
	2900 2100 4600 2100
Wire Wire Line
	4650 2200 4650 2150
Wire Wire Line
	4650 2150 5200 2150
Wire Wire Line
	2900 2200 4650 2200
Wire Wire Line
	4700 2300 4700 2250
Wire Wire Line
	4700 2250 5200 2250
Wire Wire Line
	2900 2300 4700 2300
Wire Wire Line
	4450 2600 4450 2350
Wire Wire Line
	4450 2350 5200 2350
Wire Wire Line
	2900 2600 4450 2600
Wire Wire Line
	4550 2800 4550 2450
Wire Wire Line
	4550 2450 5200 2450
Wire Wire Line
	2900 2800 4550 2800
Wire Wire Line
	4650 2900 4650 2550
Wire Wire Line
	4650 2550 5200 2550
Wire Wire Line
	2900 2900 4650 2900
Wire Wire Line
	4750 3000 4750 2650
Wire Wire Line
	4750 2650 5200 2650
Wire Wire Line
	2900 3000 4750 3000
Wire Wire Line
	5200 2750 4800 2750
Wire Wire Line
	4800 2750 4800 3100
Wire Wire Line
	4800 3100 800  3100
Wire Wire Line
	800  3100 800  1600
Wire Wire Line
	800  1600 2400 1600
Wire Wire Line
	750  1700 750  3150
Wire Wire Line
	750  3150 2300 3150
Wire Wire Line
	4850 3150 4850 2850
Wire Wire Line
	4850 2850 5200 2850
Wire Wire Line
	750  1700 2400 1700
Connection ~ 2300 3150
Wire Wire Line
	2300 3150 3000 3150
Connection ~ 3000 3150
Wire Wire Line
	3000 3150 4850 3150
Wire Wire Line
	5200 2950 4900 2950
Wire Wire Line
	4900 2950 4900 3200
Wire Wire Line
	4900 3200 700  3200
Wire Wire Line
	700  3200 700  1800
Wire Wire Line
	700  1800 2400 1800
$Comp
L Device:Speaker LS?
U 1 1 5B0F0D4B
P 7050 1050
F 0 "LS?" H 7220 1046 50  0000 L CNN
F 1 "Speaker" H 7220 955 50  0000 L CNN
F 2 "" H 7050 850 50  0001 C CNN
F 3 "~" H 7040 1000 50  0001 C CNN
	1    7050 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:Speaker LS?
U 1 1 5B0F0DEA
P 7050 1500
F 0 "LS?" H 7220 1496 50  0000 L CNN
F 1 "Speaker" H 7220 1405 50  0000 L CNN
F 2 "" H 7050 1300 50  0001 C CNN
F 3 "~" H 7040 1450 50  0001 C CNN
	1    7050 1500
	1    0    0    -1  
$EndComp
$Comp
L New_Library:Audio-Jack-3_2Switches J?
U 1 1 5B1023F7
P 6400 1800
F 0 "J?" H 6113 1777 50  0000 R CNN
F 1 "Audio-Jack-3_2Switches" H 6113 1868 50  0000 R CNN
F 2 "" H 6650 1900 50  0001 C CNN
F 3 "~" H 6650 1900 50  0001 C CNN
	1    6400 1800
	-1   0    0    1   
$EndComp
$Comp
L Device:POT_Dual RV?
U 1 1 5B10256D
P 7450 2450
F 0 "RV?" H 7450 2218 50  0000 C CNN
F 1 "POT_Dual" H 7450 2127 50  0000 C CNN
F 2 "" H 7700 2375 50  0001 C CNN
F 3 "~" H 7700 2375 50  0001 C CNN
	1    7450 2450
	1    0    0    -1  
$EndComp
$Comp
L kicad-rescue:GND-power #PWR?
U 1 1 5B102765
P 7450 2550
F 0 "#PWR?" H 7450 2300 50  0001 C CNN
F 1 "GND" H 7450 2400 50  0000 C CNN
F 2 "" H 7450 2550 50  0000 C CNN
F 3 "" H 7450 2550 50  0000 C CNN
	1    7450 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 2550 7450 2550
Wire Wire Line
	7550 2550 7450 2550
Connection ~ 7450 2550
$EndSCHEMATC
