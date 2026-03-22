import cpu_defs::*;

module decoder (
    input wire [DATA_W-1:0] instruction,
    output wire [5:0] opcode,
    output wire [4:0] rs,
    output wire [4:0] rt,
    output wire [4:0] rd,
    output wire [4:0] shamt,
    output wire [5:0] funct,
    output wire [15:0] imm,
    output wire [25:0] jaddr
);
    assign opcode = instruction[31:26];
    assign rs = instruction[25:21];
    assign rt = instruction[20:16];
    assign rd = instruction[15:11];
    assign shamt = instruction[10:6];
    assign funct = instruction[5:0];
    assign imm = instruction[15:0];
    assign jaddr = instruction[25:0];
endmodule

