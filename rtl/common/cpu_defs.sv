package cpu_defs;

localparam DATA_W = 32;
localparam ADDR_W = 32;

localparam REG_COUNT = 8;

localparam DMEM_DEPTH = 8;

localparam IMEM_DEPTH = 16;

// Opcodes (MIPS-like)
localparam OPC_RTYPE = 6'b000000;
localparam OPC_ADDI = 6'b001000;
localparam OPC_BEQ = 6'b000100;
localparam OPC_LW = 6'b100011;
localparam OPC_SW = 6'b101011;
localparam OPC_J = 6'b000010;

// Func codes for R-type
localparam FUNCT_ADD = 6'b100000;
localparam FUNCT_SUB = 6'b100010;
localparam FUNCT_AND = 6'b100100;
localparam FUNCT_OR = 6'b100101;
localparam FUNCT_SLT = 6'b101010;

// ALU control
localparam ALU_OP_W = 4;

localparam ALU_NOP = 0;
localparam ALU_ADD = 1;
localparam ALU_SUB = 2;
localparam ALU_AND = 3;
localparam ALU_OR = 4;
localparam ALU_SLT = 5;


// Address widths
parameter REG_ADDR_W = $clog2(REG_COUNT);
parameter DMEM_ADDR_W = $clog2(DMEM_DEPTH);
parameter IMEM_ADDR_W = $clog2(IMEM_DEPTH);

endpackage

