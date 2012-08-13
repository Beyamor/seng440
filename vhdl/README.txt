IMPORTANT COMPILATION INFORMATION:
The VHDL code contained within this folder was programmed and developed
using gHDL on the Ubuntu 12.04 Operating System. 

In order to the code using the provided Makefile the following packages
are required:
- make
- gtkwave
- ghdl

In order to run a testbench, type the following command into the terminal
from the vhdl root directory (the one this file is in):
make all TESTBENCH=tb_func

where tb_func is to be replaced by:
- tb_atan
- tb_cos
- tb_sin

A successful compilation, run and view will result in the gtkwave simulator
appearing to be fiddled around with to see how the testbench results work.

Good Luck and Happy Simulating.
