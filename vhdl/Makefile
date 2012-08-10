#project name
PROJECT=matrix_diagonalization
#vhdl files
FILES = src/multiplier.vhd
#testbench
SIMTOP 		= multiplier
SIMFILES	= testbench/tb_multiplier.vhd
SIMDIR 		= simu
#Simu break condition
GHDL_SIM_OPT = --assert-level=error
GHDL_RUN_OPT = --stop-time=500ns

GHDL_CMD 	= ghdl
GHDL_FLAGS	= --ieee=synopsys --warn-no-vital-generic
WORK_FLAGS	= --workdir=simu --work=work

VIEW_CMD 	= /usr/bin/gtkwave

ghdl-verify:
	$(GHDL_CMD) -i $(GHDL_FLAGS) $(WORK_FLAGS) $(FILES) $(SIMFILES)

ghdl-compile:
	$(GHDL_CMD) -m $(GHDL_FLAGS) $(WORK_FLAGS) $(SIMTOP)
	@mv $(SIMTOP) $(SIMDIR)/$(SIMTOP)
	
ghdl-run :                                                                                                    
	@$(SIMDIR)/$(SIMTOP) $(GHDL_SIM_OPT) --vcdgz=$(SIMDIR)/$(SIMTOP).vcdgz                                      
                                                                                                             
ghdl-view:                                                                                                    
	gunzip --stdout $(SIMDIR)/$(SIMTOP).vcdgz | $(VIEW_CMD) --vcd                                               
                                                                                                             
ghdl-clean :                                                                                                  
	$(GHDL_CMD) --clean --workdir=simu
	rm $(SIMDIR)/*.vcdgz
	
ghdl-all:
	make ghdl-verify
	make ghdl-compile
	make ghdl-run
	make ghdl-view

