import cpu_defs::*;

module cpu (
    input wire clk,
    input wire rst
);
    wire [ADDR_W-1:0] imem_addr;
    wire [DATA_W-1:0] imem_data;
    wire [ADDR_W-1:0] dmem_addr;
    wire [DATA_W-1:0] dmem_wdata;
    wire dmem_we;
    wire [DATA_W-1:0] dmem_rdata;

    core_singlecycle u_core_singlecycle (
        .clk(clk),
        .rst(rst),
        .imem_addr(imem_addr),
        .imem_data(imem_data),
        .dmem_addr(dmem_addr),
        .dmem_wdata(dmem_wdata),
        .dmem_we(dmem_we),
        .dmem_rdata(dmem_rdata)
    );

    instr_mem u_instr_mem (
        .addr(imem_addr),
        .com(imem_data)
    );

    data_mem u_data_mem (
        .clk(clk),
        .rst(rst),
        .addr(dmem_addr),
        .id(dmem_wdata),
        .w(dmem_we),
        .od(dmem_rdata)
    );
endmodule

