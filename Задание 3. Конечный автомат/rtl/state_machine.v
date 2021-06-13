
`define IDLE    0
`define START   1
`define STARTED 2
`define STOP    3
`define STOPED  4

module state_machine (

  // Clock and reset input
  input        clk_i,
  input        rstn_i,

  // Inputs data
  input        start_i,
  input        stop_i,

  // Outputs data
  output [7:0] counter_o,
  output       valid_o
);

  reg [7:0] counter_data;
  reg       valid_data;

  reg [3:0] curr_state;
  reg [3:0] next_state;

  always @( * ) begin
    case ( curr_state )
      `IDLE:
        if ( start_i ) next_state <= `START;
        else           next_state <= `IDLE;
      `START:          next_state <= `STARTED;
      `STARTED:
        if ( stop_i )  next_state <= `STOP;
        else           next_state <= `STARTED;
      `STOP:           next_state <= `STOPED;
      `STOPED:
        if ( start_i ) next_state <= `START;
        else           next_state <= `STOPED;
      default:
        next_state <= `IDLE;
    endcase
  end

  always @( posedge clk_i or negedge rstn_i ) begin
    if ( ~rstn_i ) curr_state <= `IDLE;
    else           curr_state <= next_state;
  end

  always @(posedge clk_i ) begin
    if ( curr_state == `START ) begin
      counter_data <= 0;
      valid_data <= 0;
    end
    else if ( curr_state == `STARTED ) begin
      counter_data <= counter_data + 1;
      valid_data <= 0;
    end
    else if ( curr_state == `STOP ) begin
      valid_data <= 1;
    end
    else if ( curr_state == `STOPED ) begin
      valid_data <= 0;
    end
  end

  assign counter_o = counter_data;
  assign valid_o = valid_data;

endmodule
