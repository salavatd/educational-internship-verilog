
module enable_generator (

  // Clock and reset
  input  clk50m_i,
  input  rst_n_i,

  // Output data
  output enable_signal_o
);

  reg [1:0] counter;

  always @( posedge clk50m_i or negedge rst_n_i ) begin
    if ( ~rst_n_i ) begin
      counter <= 0;
    end
    else begin
      counter <= counter + 1;
    end
  end

  assign enable_signal_o = (counter == 3);

endmodule
