GHDL = ghdl
FLAGS = "--std=08"
INPUT_NAME = adder
ENTITY_NAME = full_adder_vhdl_code
TESTBENCH_INPUT_NAME = adder_tb
TESTBENCH_ENTITY_NAME = Testbench_full_adder

all:
	@$(GHDL) -a $(FLAGS) $(INPUT_NAME).vhdl
	@$(GHDL) -a $(FLAGS) $(TESTBENCH_INPUT_NAME).vhdl
	@$(GHDL) -e $(FLAGS) $(TESTBENCH_ENTITY_NAME)
	@$(GHDL) -r $(FLAGS) $(TESTBENCH_ENTITY_NAME) --stop-time=10us --wave=wave.ghw

wave:
	gtkwave wave.ghw
