import cpu_defs::*;

module imm_ext (
    input  wire [15:0] imm_in,
    output wire [DATA_W-1:0] imm_out
);
    assign imm_out = {{(DATA_W-16){imm_in[15]}}, imm_in};
endmodule

