/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module character_map_15 (
    input clk,
    input rst,
    input [2:0] x_pos,
    input [2:0] y_pos,
    output reg [63:0] map
  );
  
  
  
  integer i;
  
  integer j;
  
  always @* begin
    for (i = 1'h0; i < 4'h8; i = i + 1) begin
      for (j = 1'h0; j < 4'h8; j = j + 1) begin
        if (i == y_pos && j == x_pos) begin
          map[(i)*8+(j)*1+0-:1] = 1'h1;
        end else begin
          map[(i)*8+(j)*1+0-:1] = 1'h0;
        end
      end
    end
  end
endmodule
