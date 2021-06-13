
module top (

  // Input data
  input      select_i,

  input      data_0_i,
  input      data_1_i,

  // Output data
  output data_o
);
  
  // Полином Жегалкина
  assign data_o = data_0_i ^ data_0_i & select_i ^ data_1_i & select_i;

endmodule
