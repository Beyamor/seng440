#project name
PROJECT=matrix_diagonalization

#vhdl files
FILES = src/atan.vhd
VHDLEX = .vhd

#testbench
TESTBENCHPATH 	= testbench/${TESTBENCH}$(VHDLEX)
SIMDIR 			= simulation

#Simu break condition
GHDL_SIM_OPT = --assert-level=error
GHDL_RUN_OPT = --stop-time=500ns

GHDL_CMD 	= ghdl
GHDL_FLAGS	= --ieee=synopsys --warn-no-vital-generic
WORK_FLAGS	= --workdir=simulation --work=work

VIEW_CMD 	= gtkwave

all: compile run view

compile:
ifeq ($(strip $(TESTBENCH)),)
		@echo "TESTBENCH not set. Use TESTBENCH=value to set it."
		@exit 2
endif 
	mkdir -p $(SIMDIR)
	$(GHDL_CMD) -i $(GHDL_FLAGS) $(WORK_FLAGS) $(TESTBENCHPATH) $(FILES)
	$(GHDL_CMD) -m $(GHDL_FLAGS) $(WORK_FLAGS) -fexplicit $(TESTBENCH)
	@mv $(TESTBENCH) $(SIMDIR)/$(TESTBENCH)
	
run :                                                                                                    
	@$(SIMDIR)/$(TESTBENCH) $(GHDL_SIM_OPT) --vcdgz=$(SIMDIR)/$(TESTBENCH).vcdgz                                      
                                                                                                             
view:                                                                                                    
	gunzip --stdout $(SIMDIR)/$(TESTBENCH).vcdgz | $(VIEW_CMD) --vcd                                               
                                                                                                             
clean :                                                                                                  
	$(GHDL_CMD) --clean --workdir=simulation
	
