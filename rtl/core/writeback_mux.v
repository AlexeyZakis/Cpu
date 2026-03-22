import cpu_defs::*;

module writeback_mux (
    input wire [DATA_W-1:0] alu_result,
    input wire [DATA_W-1:0] mem_result,
    input wire mem_to_reg,
    output wire [DATA_W-1:0] wb_data
);
    assign wb_data = mem_to_reg ? mem_result : alu_result;
endmodule

