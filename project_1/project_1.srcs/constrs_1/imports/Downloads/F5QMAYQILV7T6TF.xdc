set_property PACKAGE_PIN    Y9 [get_ports {   clk100 } ]
set_property PACKAGE_PIN	Y21	[get_ports {	vga_blue[0]	}	]
set_property PACKAGE_PIN	Y20	[get_ports {	vga_blue[1]	}	]
set_property PACKAGE_PIN	AB20	[get_ports {	vga_blue[2]	}	]
set_property PACKAGE_PIN	AB19	[get_ports {	vga_blue[3]	}	]
set_property PACKAGE_PIN	AB22	[get_ports {	vga_green[0]	}	]
set_property PACKAGE_PIN	AA22	[get_ports {	vga_green[1]	}	]
set_property PACKAGE_PIN	AB21	[get_ports {	vga_green[2]	}	]
set_property PACKAGE_PIN	AA21	[get_ports {	vga_green[3]	}	]
set_property PACKAGE_PIN	V20	[get_ports {	vga_red[0]	}	]
set_property PACKAGE_PIN	U20	[get_ports {	vga_red[1]	}	]
set_property PACKAGE_PIN	V19	[get_ports {	vga_red[2]	}	]
set_property PACKAGE_PIN	V18	[get_ports {	vga_red[3]	}	]
set_property PACKAGE_PIN	AA19	[get_ports {	vga_hsync	}	]
set_property PACKAGE_PIN	Y19	[get_ports {	vga_vsync	}	]
					
## JA					
#set_property PACKAGE_PIN	Y11	[get_ports {	OV7670_PWDN	}	]; # JA1
#set_property PACKAGE_PIN	AB11	[get_ports {	OV7670_RESET	}	]; # JA7
#set_property PACKAGE_PIN	AA11	[get_ports {	OV7670_D[0]	}	]; # JA2
#set_property PACKAGE_PIN	AB10	[get_ports {	OV7670_D[1]	}	]; # JA8
#set_property PACKAGE_PIN	Y10	[get_ports {	OV7670_D[2]	}	]; # JA3
#set_property PACKAGE_PIN	AB9	[get_ports {	OV7670_D[3]	}	]; # JA9 
#set_property PACKAGE_PIN	AA9	[get_ports {	OV7670_D[4]	}	]; # JA4
#set_property PACKAGE_PIN	AA8	[get_ports {	OV7670_D[5]	}	]; # JA10
## JB					
#set_property PACKAGE_PIN	W12	[get_ports {	OV7670_D[6]	}	]; # JB1
#set_property PACKAGE_PIN	V12	[get_ports {	OV7670_D[7]	}	]; # JB7
#set_property PACKAGE_PIN	W11	[get_ports {	OV7670_XCLK	}	]; # JB2
#set_property PACKAGE_PIN	W10	[get_ports {	OV7670_PCLK	}	]; # JB8
#set_property PACKAGE_PIN	V10	[get_ports {	OV7670_HREF	}	]; # JB3
#set_property PACKAGE_PIN	V9	[get_ports {	OV7670_VSYNC	}	]; # JB9
#set_property PACKAGE_PIN	W8	[get_ports {	OV7670_SIOD	}	]; # JB4
#set_property PACKAGE_PIN	V8	[get_ports {	OV7670_SIOC	}	]; # JB10

## #################################################################
# JC
set_property PACKAGE_PIN	AB7	[get_ports {	OV7670_PWDN	}	]; # JC1_P
set_property PACKAGE_PIN	R6	[get_ports {	OV7670_RESET	}	]; # JC3_P
set_property PACKAGE_PIN	AB6	[get_ports {	OV7670_D[0]	}	]; # JC1_N
set_property PACKAGE_PIN	T6	[get_ports {	OV7670_D[1]	}	]; # JC3_N
set_property PACKAGE_PIN	Y4	[get_ports {	OV7670_D[2]	}	]; # JC2_P
set_property PACKAGE_PIN	T4	[get_ports {	OV7670_D[3]	}	]; # JC4_P
set_property PACKAGE_PIN	AA4	[get_ports {	OV7670_D[4]	}	]; # JC2_N
set_property PACKAGE_PIN	U4	[get_ports {	OV7670_D[5]	}	]; # JC4_N
# JD					
set_property PACKAGE_PIN	V7	[get_ports {	OV7670_D[6]	}	]; # JD1_P
set_property PACKAGE_PIN	W6	[get_ports {	OV7670_D[7]	}	]; # JD3_P
set_property PACKAGE_PIN	W7	[get_ports {	OV7670_XCLK	}	]; # JD1_N
set_property PACKAGE_PIN	W5	[get_ports {	OV7670_PCLK	}	]; # JD3_N
set_property PACKAGE_PIN	V5	[get_ports {	OV7670_HREF	}	]; # JD2_P
set_property PACKAGE_PIN	U6	[get_ports {	OV7670_VSYNC	}	]; # JD4_P
set_property PACKAGE_PIN	V4	[get_ports {	OV7670_SIOD	}	]; # JD2_N
set_property PACKAGE_PIN	U5	[get_ports {	OV7670_SIOC	}	]; # JD4_N


# ################################################################
				
set_property PACKAGE_PIN	T22	[get_ports {	LED[0]	}	]
set_property PACKAGE_PIN	T21	[get_ports {	LED[1]	}	]
set_property PACKAGE_PIN	U22	[get_ports {	LED[2]	}	]
set_property PACKAGE_PIN	U21	[get_ports {	LED[3]	}	]
set_property PACKAGE_PIN	V22	[get_ports {	LED[4]	}	]
set_property PACKAGE_PIN	W22	[get_ports {	LED[5]	}	]
set_property PACKAGE_PIN	U19	[get_ports {	LED[6]	}	]
set_property PACKAGE_PIN	U14	[get_ports {	LED[7]	}	]
					
set_property PACKAGE_PIN	T18	[get_ports {	btn	}	]


# Voltage levels
set_property IOSTANDARD LVTTL [get_ports btn]
set_property IOSTANDARD LVTTL [get_ports {LED[*]}]

set_property IOSTANDARD LVTTL [get_ports OV7670_PCLK]
set_property IOSTANDARD LVTTL [get_ports OV7670_SIOC]
set_property IOSTANDARD LVTTL [get_ports OV7670_VSYNC]
set_property IOSTANDARD LVTTL [get_ports OV7670_RESET]
set_property IOSTANDARD LVTTL [get_ports OV7670_PWDN]
set_property IOSTANDARD LVTTL [get_ports OV7670_HREF]
set_property IOSTANDARD LVTTL [get_ports OV7670_XCLK]
set_property IOSTANDARD LVTTL [get_ports OV7670_SIOD]
set_property IOSTANDARD LVTTL [get_ports {OV7670_D[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_blue[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_green[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_red[*]}]
set_property IOSTANDARD LVCMOS33 [get_ports vga_hsync]
set_property IOSTANDARD LVCMOS33 [get_ports vga_vsync]
set_property IOSTANDARD LVCMOS33 [get_ports clk100]

# Magic
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets OV7670_PCLK_IBUF]