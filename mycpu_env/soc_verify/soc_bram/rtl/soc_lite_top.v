/*------------------------------------------------------------------------------
--------------------------------------------------------------------------------
Copyright (c) 2016, Loongson Technology Corporation Limited.

All rights reserved.

Redistribution and use in source and binary forms, with or without modification,
are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this 
list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, 
this list of conditions and the following disclaimer in the documentation and/or
other materials provided with the distribution.

3. Neither the name of Loongson Technology Corporation Limited nor the names of 
its contributors may be used to endorse or promote products derived from this 
software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND 
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED 
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE 
DISCLAIMED. IN NO EVENT SHALL LOONGSON TECHNOLOGY CORPORATION LIMITED BE LIABLE
TO ANY PARTY FOR DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR 
CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE 
GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) 
HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT 
LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF
THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
--------------------------------------------------------------------------------
------------------------------------------------------------------------------*/

//*************************************************************************
//   > File Name   : soc_top.v
//   > Description : SoC, included cpu, 2 x 3 bridge,
//                   inst ram, confreg, data ram
// 
//           -------------------------
//           |           cpu         |
//           -------------------------
//         inst|                  | data
//             |                  | 
//             |        ---------------------
//             |        |    1 x 2 bridge   |
//             |        ---------------------
//             |             |            |           
//             |             |            |           
//      -------------   -----------   -----------
//      | inst ram  |   | data ram|   | confreg |
//      -------------   -----------   -----------
//
//   > Author      : LOONGSON
//   > Date        : 2017-08-04
//*************************************************************************

`default_nettype none

//for simulation:
//1. if define SIMU_USE_PLL = 1, will use clk_pll to generate cpu_clk/timer_clk,
//   and simulation will be very slow.
//2. usually, please define SIMU_USE_PLL=0 to speed up simulation by assign
//   cpu_clk/timer_clk = clk.
//   at this time, cpu_clk/timer_clk frequency are both 100MHz, same as clk.
`define SIMU_USE_PLL 0 //set 0 to speed up simulation

module soc_lite_top #(parameter SIMULATION=1'b0)
(
    input  wire        resetn, 
    input  wire        clk,

    //------gpio-------
    output wire [15:0] led,
    output wire [1 :0] led_rg0,
    output wire [1 :0] led_rg1,
    output wire [7 :0] num_csn,
    output wire [6 :0] num_a_g,
    //output wire [31:0] num_data,
    input  wire [7 :0] switch, 
    //output wire [3 :0] btn_key_col,
    //input  wire [3 :0] btn_key_row,
    input  wire [1 :0] btn_step
);

//适配本地开发板外设
//*************************************************************************
wire [31:0] num_data;
wire [3 :0] btn_key_col;
wire [3 :0] btn_key_row;
//************************************************************************


//debug signals
wire [31:0] debug_wb_pc;
wire [3 :0] debug_wb_rf_we;
wire [4 :0] debug_wb_rf_wnum;
wire [31:0] debug_wb_rf_wdata;

//clk and resetn
wire cpu_clk;
wire timer_clk;
reg cpu_resetn;
always @(posedge cpu_clk)
begin
    cpu_resetn <= resetn;
end
generate if(SIMULATION && `SIMU_USE_PLL==0)
begin: speedup_simulation
    assign cpu_clk   = clk;
    assign timer_clk = clk;
end
else
begin: pll
    clk_pll clk_pll
    (
        .clk_in1 (clk),
        .cpu_clk (cpu_clk),
        .timer_clk (timer_clk)
    );
end
endgenerate

//cpu inst sram
wire        cpu_inst_en;
wire [3 :0] cpu_inst_we;
wire [31:0] cpu_inst_addr;
wire [31:0] cpu_inst_wdata;
wire [31:0] cpu_inst_rdata;
//cpu data sram
wire        cpu_data_en;
wire [3 :0] cpu_data_we;
wire [31:0] cpu_data_addr;
wire [31:0] cpu_data_wdata;
wire [31:0] cpu_data_rdata;

//data sram
wire        data_sram_en;
wire [3 :0] data_sram_we;
wire [31:0] data_sram_addr;
wire [31:0] data_sram_wdata;
wire [31:0] data_sram_rdata;
//conf
wire        conf_en;
wire [3 :0] conf_we;
wire [31:0] conf_addr;
wire [31:0] conf_wdata;
wire [31:0] conf_rdata;

//cpu
mycpu_top cpu(
    .clk              (cpu_clk   ),
    .resetn           (cpu_resetn),  //low active

    .inst_sram_en     (cpu_inst_en   ),
    .inst_sram_we     (cpu_inst_we   ),
    .inst_sram_addr   (cpu_inst_addr ),
    .inst_sram_wdata  (cpu_inst_wdata),
    .inst_sram_rdata  (cpu_inst_rdata),
    
    .data_sram_en     (cpu_data_en   ),
    .data_sram_we     (cpu_data_we   ),
    .data_sram_addr   (cpu_data_addr ),
    .data_sram_wdata  (cpu_data_wdata),
    .data_sram_rdata  (cpu_data_rdata),

    //debug
    .debug_wb_pc      (debug_wb_pc      ),
    .debug_wb_rf_we   (debug_wb_rf_we   ),
    .debug_wb_rf_wnum (debug_wb_rf_wnum ),
    .debug_wb_rf_wdata(debug_wb_rf_wdata)
);

//inst ram
inst_ram inst_ram
(
    .clka  (cpu_clk            ),   
    .ena   (cpu_inst_en        ),
    .wea   (cpu_inst_we        ),   //3:0
    .addra (cpu_inst_addr[19:2]),   //17:0
    .dina  (cpu_inst_wdata     ),   //31:0
    .douta (cpu_inst_rdata     )    //31:0
);


//data ram
 data_ram data_ram (
    .rsta_busy(rsta_busy),          // output wire rsta_busy
    .rstb_busy(rstb_busy),          // output wire rstb_busy
    .s_aclk(s_aclk),                // input wire s_aclk
    .s_aresetn(s_aresetn),          // input wire s_aresetn
    .s_axi_awid(s_axi_awid),        // input wire [3 : 0] s_axi_awid
    .s_axi_awaddr(s_axi_awaddr),    // input wire [31 : 0] s_axi_awaddr
    .s_axi_awlen(s_axi_awlen),      // input wire [7 : 0] s_axi_awlen
    .s_axi_awsize(s_axi_awsize),    // input wire [2 : 0] s_axi_awsize
    .s_axi_awburst(s_axi_awburst),  // input wire [1 : 0] s_axi_awburst
    .s_axi_awvalid(s_axi_awvalid),  // input wire s_axi_awvalid
    .s_axi_awready(s_axi_awready),  // output wire s_axi_awready
    .s_axi_wdata(s_axi_wdata),      // input wire [31 : 0] s_axi_wdata
    .s_axi_wstrb(s_axi_wstrb),      // input wire [3 : 0] s_axi_wstrb
    .s_axi_wlast(s_axi_wlast),      // input wire s_axi_wlast
    .s_axi_wvalid(s_axi_wvalid),    // input wire s_axi_wvalid
    .s_axi_wready(s_axi_wready),    // output wire s_axi_wready
    .s_axi_bid(s_axi_bid),          // output wire [3 : 0] s_axi_bid
    .s_axi_bresp(s_axi_bresp),      // output wire [1 : 0] s_axi_bresp
    .s_axi_bvalid(s_axi_bvalid),    // output wire s_axi_bvalid
    .s_axi_bready(s_axi_bready),    // input wire s_axi_bready
    .s_axi_arid(s_axi_arid),        // input wire [3 : 0] s_axi_arid
    .s_axi_araddr(s_axi_araddr),    // input wire [31 : 0] s_axi_araddr
    .s_axi_arlen(s_axi_arlen),      // input wire [7 : 0] s_axi_arlen
    .s_axi_arsize(s_axi_arsize),    // input wire [2 : 0] s_axi_arsize
    .s_axi_arburst(s_axi_arburst),  // input wire [1 : 0] s_axi_arburst
    .s_axi_arvalid(s_axi_arvalid),  // input wire s_axi_arvalid
    .s_axi_arready(s_axi_arready),  // output wire s_axi_arready
    .s_axi_rid(s_axi_rid),          // output wire [3 : 0] s_axi_rid
    .s_axi_rdata(s_axi_rdata),      // output wire [31 : 0] s_axi_rdata
    .s_axi_rresp(s_axi_rresp),      // output wire [1 : 0] s_axi_rresp
    .s_axi_rlast(s_axi_rlast),      // output wire s_axi_rlast
    .s_axi_rvalid(s_axi_rvalid),    // output wire s_axi_rvalid
    .s_axi_rready(s_axi_rready)    // input wire s_axi_rready
  );

cache  cache_inst (
    .clk(clk),
    .resetn(resetn),
    .valid(valid),
    .op(op),
    .index(index),
    .tag(tag),
    .offset(offset),
    .wstrb(wstrb),
    .wdata(wdata),
    .addr_ok(addr_ok),
    .data_ok(data_ok),
    .rdata(rdata),
    .rd_req(rd_req),
    .rd_type(rd_type),
    .rd_addr(rd_addr),
    .rd_rdy(rd_rdy),
    .ret_valid(ret_valid),
    .ret_last(ret_last),
    .ret_data(ret_data),
    .wr_req(wr_req),
    .wr_type(wr_type),
    .wr_addr(wr_addr),
    .wr_wstrb(wr_wstrb),
    .wr_data(wr_data),
    .wr_rdy(wr_rdy)
  );

  bridge_sram_axi my_bridge_sram_axi(
    .aclk               (aclk               ),
    .aresetn            (aresetn            ),

    .arid               (arid               ),
    .araddr             (araddr             ),
    .arlen              (arlen              ),
    .arsize             (arsize             ),
    .arburst            (arburst            ),
    .arlock             (arlock             ),
    .arcache            (arcache            ),
    .arprot             (arprot             ),
    .arvalid            (arvalid            ),
    .arready            (arready            ),

    .rid                (rid                ),
    .rdata              (rdata              ),
    .rvalid             (rvalid             ),
    .rlast              (rlast              ),
    .rready             (rready             ),

    .awid               (awid               ),
    .awaddr             (awaddr             ),
    .awlen              (awlen              ),
    .awsize             (awsize             ),
    .awburst            (awburst            ),
    .awlock             (awlock             ),
    .awcache            (awcache            ),
    .awprot             (awprot             ),
    .awvalid            (awvalid            ),
    .awready            (awready            ),

    .wid                (wid                ),
    .wdata              (wdata              ),
    .wstrb              (wstrb              ),
    .wlast              (wlast              ),
    .wvalid             (wvalid             ),
    .wready             (wready             ),

    .bid                (bid                ),
    .bvalid             (bvalid             ),
    .bready             (bready             ),

    .icache_rd_req      (icache_rd_req      ),
    .icache_rd_type     (icache_rd_type     ),
    .icache_rd_addr     (icache_rd_addr     ),
    .icache_rd_rdy      (icache_rd_rdy      ),
    .icache_ret_valid   (icache_ret_valid   ),
    .icache_ret_last    (icache_ret_last    ),
    .icache_ret_data    (icache_ret_data    ),

    .dcache_rd_req      (dcache_rd_req      ),
    .dcache_rd_type     (dcache_rd_type     ),
    .dcache_rd_addr     (dcache_rd_addr     ),
    .dcache_rd_rdy      (dcache_rd_rdy      ),
    .dcache_ret_valid   (dcache_ret_valid   ),
    .dcache_ret_last    (dcache_ret_last    ),
    .dcache_ret_data    (dcache_ret_data    ),

    .dcache_wr_req      (dcache_wr_req      ),
    .dcache_wr_type     (dcache_wr_type     ),
    .dcache_wr_addr     (dcache_wr_addr     ),
    .dcache_wr_wstrb    (dcache_wr_wstrb    ),
    .dcache_wr_data     (dcache_wr_data     ),
    .dcache_wr_rdy      (dcache_wr_rdy      )
    );


    /*排序上板无需外设*/
// //confreg
// confreg #(.SIMULATION(SIMULATION)) u_confreg
// (
//     .clk         ( cpu_clk    ),  // i, 1   
//     .timer_clk   ( timer_clk  ),  // i, 1   
//     .resetn      ( cpu_resetn ),  // i, 1    
//     .conf_en     ( conf_en    ),  // i, 1      
//     .conf_we     ( conf_we    ),  // i, 4      
//     .conf_addr   ( conf_addr  ),  // i, 32        
//     .conf_wdata  ( conf_wdata ),  // i, 32         
//     .conf_rdata  ( conf_rdata ),  // o, 32         
//     .led         ( led        ),  // o, 16   
//     .led_rg0     ( led_rg0    ),  // o, 2      
//     .led_rg1     ( led_rg1    ),  // o, 2      
//     .num_csn     ( num_csn    ),  // o, 8      
//     .num_a_g     ( num_a_g    ),  // o, 7      
//     .num_data    ( num_data   ),  // o, 32
//     .switch      ( switch     ),  // i, 8     
//     .btn_key_col ( btn_key_col),  // o, 4          
//     .btn_key_row ( btn_key_row),  // i, 4           
//     .btn_step    ( btn_step   )   // i, 2   
// );

    // bridge_1x2 bridge_1x2(
    //     .clk             ( cpu_clk         ), // i, 1                 
    //     .resetn          ( cpu_resetn      ), // i, 1                 
    
    //     .cpu_data_en     ( cpu_data_en     ), // i, 4                 
    //     .cpu_data_we     ( cpu_data_we     ), // i, 4                 
    //     .cpu_data_addr   ( cpu_data_addr   ), // i, 32                
    //     .cpu_data_wdata  ( cpu_data_wdata  ), // i, 32                
    //     .cpu_data_rdata  ( cpu_data_rdata  ), // o, 32                
    
    //     .data_sram_en    ( data_sram_en    ), // o, 4                 
    //     .data_sram_we    ( data_sram_we    ), // o, 4                 
    //     .data_sram_addr  ( data_sram_addr  ), // o, `DATA_RAM_ADDR_LEN
    //     .data_sram_wdata ( data_sram_wdata ), // o, 32                
    //     .data_sram_rdata ( data_sram_rdata ), // i, 32                
    
    //     .conf_en         ( conf_en         ), // o, 1                 
    //     .conf_we         ( conf_we         ), // o, 4                 
    //     .conf_addr       ( conf_addr       ), // o, 32                
    //     .conf_wdata      ( conf_wdata      ), // o, 32                
    //     .conf_rdata      ( conf_rdata      )  // i, 32                
    //  );
endmodule

