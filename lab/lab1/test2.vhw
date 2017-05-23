--------------------------------------------------------------------------------
-- Copyright (c) 1995-2003 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : ISE
--  /   /         Filename : test2.vhw
-- /___/   /\     Timestamp : Tue May 23 19:04:05 2017
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: test2
--Device: Xilinx
--

library UNISIM;
use UNISIM.Vcomponents.ALL;
library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE STD.TEXTIO.ALL;

ENTITY test2 IS
END test2;

ARCHITECTURE testbench_arch OF test2 IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT Circuit2
        PORT (
            A : In std_logic;
            B : In std_logic;
            C : In std_logic;
            Carry : Out std_logic;
            S : Out std_logic
        );
    END COMPONENT;

    SIGNAL A : std_logic := '0';
    SIGNAL B : std_logic := '0';
    SIGNAL C : std_logic := '0';
    SIGNAL Carry : std_logic := '0';
    SIGNAL S : std_logic := '0';

    BEGIN
        UUT : Circuit2
        PORT MAP (
            A => A,
            B => B,
            C => C,
            Carry => Carry,
            S => S
        );

        PROCESS
            BEGIN
                -- -------------  Current Time:  51ns
                WAIT FOR 51 ns;
                C <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  102ns
                WAIT FOR 51 ns;
                B <= '1';
                C <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  153ns
                WAIT FOR 51 ns;
                C <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  204ns
                WAIT FOR 51 ns;
                A <= '1';
                B <= '0';
                C <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  255ns
                WAIT FOR 51 ns;
                C <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  306ns
                WAIT FOR 51 ns;
                B <= '1';
                C <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  357ns
                WAIT FOR 51 ns;
                C <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  408ns
                WAIT FOR 51 ns;
                A <= '0';
                B <= '0';
                C <= '0';
                -- -------------------------------------
                WAIT FOR 592 ns;

            END PROCESS;

    END testbench_arch;

