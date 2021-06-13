
module top (

  // Input data
  input      select_i,

  input      data_0_i,
  input      data_1_i,

  // Output data
  output reg data_o
);

  always @( * ) begin
    if ( select_i ) begin
      data_o = data_0_i;
    end
    else begin
      data_o = data_1_i;
    end
  end

endmodule
