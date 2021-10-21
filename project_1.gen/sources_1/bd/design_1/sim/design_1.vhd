--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
--Date        : Thu Oct 21 10:24:48 2021
--Host        : idlab2 running 64-bit Ubuntu 20.04.3 LTS
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
  port (
    LED : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute core_generation_info : string;
  attribute core_generation_info of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_board_cnt=2,da_clkrst_cnt=1,synth_mode=OOC_per_IP}";
  attribute hw_handoff : string;
  attribute hw_handoff of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_c_counter_binary_0_0 is
  port (
    CLK : in STD_LOGIC;
    CE : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_1_c_counter_binary_0_0;
  component design_1_ila_0_0 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_1_ila_0_0;
  component design_1_vio_0_0 is
  port (
    clk : in STD_LOGIC;
    probe_in0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe_out0 : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_vio_0_0;
  component design_1_xlslice_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component design_1_xlslice_0_0;
  component design_1_sim_clk_gen_0_0 is
  port (
    clk : out STD_LOGIC;
    sync_rst : out STD_LOGIC
  );
  end component design_1_sim_clk_gen_0_0;
  signal Net : STD_LOGIC;
  signal c_counter_binary_0_Q : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal vio_0_probe_out0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sim_clk_gen_0_sync_rst_UNCONNECTED : STD_LOGIC;
begin
  LED(3 downto 0) <= xlslice_0_Dout(3 downto 0);
c_counter_binary_0: component design_1_c_counter_binary_0_0
     port map (
      CE => vio_0_probe_out0(0),
      CLK => Net,
      Q(31 downto 0) => c_counter_binary_0_Q(31 downto 0)
    );
ila_0: component design_1_ila_0_0
     port map (
      clk => Net,
      probe0(31 downto 0) => c_counter_binary_0_Q(31 downto 0)
    );
sim_clk_gen_0: component design_1_sim_clk_gen_0_0
     port map (
      clk => Net,
      sync_rst => NLW_sim_clk_gen_0_sync_rst_UNCONNECTED
    );
vio_0: component design_1_vio_0_0
     port map (
      clk => Net,
      probe_in0(31 downto 0) => c_counter_binary_0_Q(31 downto 0),
      probe_out0(0) => vio_0_probe_out0(0)
    );
xlslice_0: component design_1_xlslice_0_0
     port map (
      Din(31 downto 0) => c_counter_binary_0_Q(31 downto 0),
      Dout(3 downto 0) => xlslice_0_Dout(3 downto 0)
    );
end STRUCTURE;
