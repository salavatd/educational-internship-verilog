
module top (

  // Input data
  input      select_i,

  input      data_0_i,
  input      data_1_i,

  // Output data
  output data_o
);

  assign data_o = select_i ? data_0_i : data_1_i;

endmodule
