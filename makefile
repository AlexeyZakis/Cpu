VERILOG_COMPILER = iverilog
SIMULATOR = gtkwave

OUTPUT = cpu_sim
DUMP_FILE = dump.vcd

SOURCES = \
rtl/common/cpu_defs.sv \
$(wildcard rtl/*.v) \
$(wildcard rtl/core/*.v) \
$(wildcard rtl/mem/*.v) \
$(wildcard tb/*.v)

run:
	$(VERILOG_COMPILER) -g2012 -I rtl/common $(SOURCES) -o $(OUTPUT)
	./$(OUTPUT)
	$(SIMULATOR) $(DUMP_FILE)

build:
	$(VERILOG_COMPILER) -g2012 -I rtl/common $(SOURCES) -o $(OUTPUT)

sim:
	./$(OUTPUT)

wave:
	$(SIMULATOR) $(DUMP_FILE)

clean:
	rm -f $(OUTPUT) $(DUMP_FILE)

