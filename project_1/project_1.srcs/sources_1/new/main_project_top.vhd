library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity main_project_top is
    Port ( 
		GCLK_100         : in    STD_LOGIC;
		OV7670_SIOC_1  : out   STD_LOGIC;
		OV7670_SIOD_1  : inout STD_LOGIC;
		OV7670_RESET_1 : out   STD_LOGIC;
		OV7670_PWDN_1  : out   STD_LOGIC;
		OV7670_VSYNC_1 : in    STD_LOGIC;
		OV7670_HREF_1  : in    STD_LOGIC;
		OV7670_PCLK_1  : in    STD_LOGIC;
		OV7670_XCLK_1  : out   STD_LOGIC;
		OV7670_D_1     : in    STD_LOGIC_VECTOR(7 downto 0);

		OV7670_SIOC_2  : out   STD_LOGIC;
		OV7670_SIOD_2  : inout STD_LOGIC;
		OV7670_RESET_2 : out   STD_LOGIC;
		OV7670_PWDN_2  : out   STD_LOGIC;
		OV7670_VSYNC_2 : in    STD_LOGIC;
		OV7670_HREF_2  : in    STD_LOGIC;
		OV7670_PCLK_2  : in    STD_LOGIC;
		OV7670_XCLK_2  : out   STD_LOGIC;
		OV7670_D_2     : in    STD_LOGIC_VECTOR(7 downto 0);

		LED          : out    STD_LOGIC_VECTOR(7 downto 0);

		vga_red      : out   STD_LOGIC_VECTOR(3 downto 0);
		vga_green    : out   STD_LOGIC_VECTOR(3 downto 0);
		vga_blue     : out   STD_LOGIC_VECTOR(3 downto 0);
		vga_hsync    : out   STD_LOGIC;
		vga_vsync    : out   STD_LOGIC;
		
		btn 		    : in    STD_LOGIC;
		SW           : in    STD_LOGIC_VECTOR(7 downto 0)
	 );
end main_project_top;

architecture Behavioral of main_project_top is

COMPONENT ov7670_top
    Port ( 
		clk100       : in    STD_LOGIC;
        clk50        : in    STD_LOGIC;
        clk25        : in    STD_LOGIC;
		OV7670_SIOC  : out   STD_LOGIC;
		OV7670_SIOD  : inout STD_LOGIC;
		OV7670_RESET : out   STD_LOGIC;
		OV7670_PWDN  : out   STD_LOGIC;
		OV7670_VSYNC : in    STD_LOGIC;
		OV7670_HREF  : in    STD_LOGIC;
		OV7670_PCLK  : in    STD_LOGIC;
		OV7670_XCLK  : out   STD_LOGIC;
		OV7670_D     : in    STD_LOGIC_VECTOR(7 downto 0);

		LED          : out    STD_LOGIC;

		vga_red      : out   STD_LOGIC_VECTOR(3 downto 0);
		vga_green    : out   STD_LOGIC_VECTOR(3 downto 0);
		vga_blue     : out   STD_LOGIC_VECTOR(3 downto 0);
		vga_hsync    : out   STD_LOGIC;
		vga_vsync    : out   STD_LOGIC;
		
		btn 		    : in    STD_LOGIC
	 );
end COMPONENT;

--COMPONENT clocking
--PORT
-- (-- Clock in ports
--  CLK_100           : in     std_logic;
--  -- Clock out ports
--  CLK_50          : out    std_logic;
--  CLK_25          : out    std_logic
-- );
-- END COMPONENT;
component clk_wiz_0
 port
  (-- Clock in ports
   -- Clock out ports
   clk_out1          : out    std_logic;
   clk_out2          : out    std_logic;
   clk_out3          : out    std_logic;
   -- Status and control signals
   clk_in1           : in     std_logic
  );
 end component;

SIGNAL vga_red_internal_1      :  STD_LOGIC_VECTOR(3 downto 0);
SIGNAL vga_green_internal_1    :  STD_LOGIC_VECTOR(3 downto 0);
SIGNAL vga_blue_internal_1     :  STD_LOGIC_VECTOR(3 downto 0);
SIGNAL vga_hsync_internal_1    :  STD_LOGIC;
SIGNAL vga_vsync_internal_1    :  STD_LOGIC;

SIGNAL vga_red_internal_2      :  STD_LOGIC_VECTOR(3 downto 0);
SIGNAL vga_green_internal_2    :  STD_LOGIC_VECTOR(3 downto 0);
SIGNAL vga_blue_internal_2     :  STD_LOGIC_VECTOR(3 downto 0);
SIGNAL vga_hsync_internal_2    :  STD_LOGIC;
SIGNAL vga_vsync_internal_2    :  STD_LOGIC;

SIGNAL clk_100_internal : STD_LOGIC;
SIGNAL clk_50_internal : STD_LOGIC;
SIGNAL clk_25_internal : STD_LOGIC;
begin

clock_inst : clk_wiz_0
   port map ( 
  -- Clock out ports  
   clk_out1 => clk_100_internal,
   clk_out2 => clk_50_internal,
   clk_out3 => clk_25_internal,
  -- Status and control signals                
   -- Clock in ports
   clk_in1 => GCLK_100
 );

cam1: ov7670_top PORT MAP (
        clk100 => clk_100_internal,     
        clk50 => clk_50_internal,     
        clk25 => clk_25_internal,     
		OV7670_SIOC => OV7670_SIOC_1, 
		OV7670_SIOD  => OV7670_SIOD_1, 
		OV7670_RESET => OV7670_RESET_1, 
		OV7670_PWDN  => OV7670_PWDN_1, 
		OV7670_VSYNC =>OV7670_VSYNC_1,
		OV7670_HREF  => OV7670_HREF_1,  
		OV7670_PCLK  => OV7670_PCLK_1, 
		OV7670_XCLK  => OV7670_XCLK_1, 
		OV7670_D     => OV7670_D_1,

		LED          => LED(0), 

		vga_red      => vga_red_internal_1, 
		vga_green    => vga_green_internal_1, 
		vga_blue     => vga_blue_internal_1,
		vga_hsync    => vga_hsync_internal_1, 
		vga_vsync    => vga_vsync_internal_1, 
		
		btn 		    => btn
);

cam2: ov7670_top PORT MAP (
        clk100 => clk_100_internal,     
        clk50 => clk_50_internal,     
        clk25 => clk_25_internal,  
		OV7670_SIOC => OV7670_SIOC_2, 
		OV7670_SIOD  => OV7670_SIOD_2, 
		OV7670_RESET => OV7670_RESET_2, 
		OV7670_PWDN  => OV7670_PWDN_2, 
		OV7670_VSYNC =>OV7670_VSYNC_2,
		OV7670_HREF  => OV7670_HREF_2,  
		OV7670_PCLK  => OV7670_PCLK_2, 
		OV7670_XCLK  => OV7670_XCLK_2, 
		OV7670_D     => OV7670_D_2,

		LED          => LED(1), 

		vga_red      => vga_red_internal_2, 
		vga_green    => vga_green_internal_2, 
		vga_blue     => vga_blue_internal_2,
		vga_hsync    => vga_hsync_internal_2, 
		vga_vsync    => vga_vsync_internal_2, 
		
		btn 		    => btn
);

PROCESS(clk_100_internal)
BEGIN
 IF (SW(0) = '1') THEN
    vga_red      <= vga_red_internal_1; 
    vga_green    <= vga_green_internal_1; 
    vga_blue     <= vga_blue_internal_1;
    vga_hsync    <= vga_hsync_internal_1; 
    vga_vsync    <= vga_vsync_internal_1;
 ELSE
    vga_red      <= vga_red_internal_2; 
    vga_green    <= vga_green_internal_2; 
    vga_blue     <= vga_blue_internal_2;
    vga_hsync    <= vga_hsync_internal_2; 
    vga_vsync    <= vga_vsync_internal_2;
 END IF;
END PROCESS;

end Behavioral;
