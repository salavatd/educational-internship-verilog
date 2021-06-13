
module top (

  // Clock and reset
  input        clk50m_i,
  input        rst_n_i,

  // Input data
  input  [3:0] key_i,

  // Output data
  output [3:0] led_o
);
  
  reg [3:0] data;

  always @( posedge clk50m_i ) begin
    // Reset with active level 0
    if ( ~rst_n_i ) begin
      data <= 0;
    end
    else begin
      data <= key_i;
    end
  end

  assign led_o = data;

endmodule
