/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

/*
   Parameters:
     SIZE = 3
     DIV = FLIP
     TOP = 7
     UP = 1
*/
module counter_27 (
    input clk,
    input rst,
    output reg [2:0] value
  );
  
  localparam SIZE = 2'h3;
  localparam DIV = 5'h10;
  localparam TOP = 3'h7;
  localparam UP = 1'h1;
  
  
  reg [18:0] M_ctr_d, M_ctr_q = 1'h0;
  
  localparam MAX_VALUE = 19'h7ffff;
  
  always @* begin
    M_ctr_d = M_ctr_q;
    
    value = M_ctr_q[16+2-:3];
    if (1'h1) begin
      M_ctr_d = M_ctr_q + 1'h1;
      if (1'h1 && M_ctr_q == 19'h7ffff) begin
        M_ctr_d = 1'h0;
      end
    end else begin
      M_ctr_d = M_ctr_q - 1'h1;
      if (1'h1 && M_ctr_q == 1'h0) begin
        M_ctr_d = 19'h7ffff;
      end
    end
  end
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_ctr_q <= 1'h0;
    end else begin
      M_ctr_q <= M_ctr_d;
    end
  end
  
endmodule
