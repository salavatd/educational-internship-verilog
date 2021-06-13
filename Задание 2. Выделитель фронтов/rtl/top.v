
module top (
  // Clock
  input  clk,

  // Input data
  input  in_s,

  // Output data
  output out_s0,
  output out_s1
);
  
reg data_s;

reg data_s0;
reg data_s1;

always @( posedge clk ) begin
  data_s <= in_s;
end

always @( posedge clk ) begin
  if ( in_s & ~data_s ) begin
    data_s0 <= 1;
  end
  else begin
    data_s0 <= 0;
  end
end

always @( posedge clk ) begin
  if ( ~in_s & data_s ) begin
    data_s1 <= 1;
  end
  else begin
    data_s1 <= 0;
  end
end

assign out_s0 = data_s0;
assign out_s1 = data_s1;

endmodule
