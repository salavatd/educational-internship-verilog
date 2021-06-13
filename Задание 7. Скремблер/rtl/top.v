
module top (

  // Clock and reset
  input  clk_i,
  input  rstn_i,

  // Input data
  input  data_i,

  // Output data
  output data_o
);

  wire scrembled;

  scrembler scrembler (
    .clk_i    ( clk_i     ),
    .rstn_i   ( rstn_i    ),

    .data_i   ( data_i    ),

    .data_o   ( scrembled )
  );

  descrembler descrembler (
    .clk_i    ( clk_i     ),
    .rstn_i   ( rstn_i    ),

    .data_i   ( scrembled ),

    .data_o   ( data_o    )
  );

endmodule
