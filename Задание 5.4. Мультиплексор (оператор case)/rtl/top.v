
module top (

  // Input data
  input      select_i,

  input      data_0_i,
  input      data_1_i,

  // Output data
  output reg data_o
);

  always @( * ) begin
    case ( select_i )
      0: data_o = data_0_i;
      1: data_o = data_1_i;
    endcase
  end

endmodule
