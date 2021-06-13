
module top (

  // Clock and reset
  input  clk_i,
  input  rstn_i,

  // Input data
  input  data_i,

  // Output data
  output scrembled_o,

  output data_o
);

  scrembler scrembler0 (
    .clk_i    ( clk_i       ),
    .rstn_i   ( rstn_i      ),

    .data_i   ( data_i      ),

    .data_o   ( scrembled_o )
  );

  scrembler scrembler1 (
    .clk_i    ( clk_i       ),
    .rstn_i   ( rstn_i      ),

    .data_i   ( scrembled_o ),

    .data_o   ( data_o      )
  );

endmodule
