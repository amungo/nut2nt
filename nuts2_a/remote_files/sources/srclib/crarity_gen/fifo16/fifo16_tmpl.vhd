--VHDL instantiation template

component fifo16 is
    port (fifo_16_Data: in std_logic_vector(15 downto 0);
        fifo_16_Q: out std_logic_vector(15 downto 0);
        fifo_16_AlmostEmpty: out std_logic;
        fifo_16_AlmostFull: out std_logic;
        fifo_16_Clock: in std_logic;
        fifo_16_Empty: out std_logic;
        fifo_16_Full: out std_logic;
        fifo_16_RdEn: in std_logic;
        fifo_16_Reset: in std_logic;
        fifo_16_WrEn: in std_logic
    );
    
end component fifo16; -- sbp_module=true 
_inst: fifo16 port map (fifo_16_Data => __,fifo_16_Q => __,fifo_16_AlmostEmpty => __,
            fifo_16_AlmostFull => __,fifo_16_Clock => __,fifo_16_Empty => __,
            fifo_16_Full => __,fifo_16_RdEn => __,fifo_16_Reset => __,fifo_16_WrEn => __);
