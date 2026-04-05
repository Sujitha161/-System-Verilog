// Packed Structure
module tb;
  typedef struct packed {
    logic [3:0] ip;
    bit [2:0] mode;
    bit en;} control;
  initial begin
    control ctrl1 = '{4'b1010,3'b101,0};
    $display("ctr1=%p",ctrl1);
    ctrl1.ip=4'b1001;
    $display("ctr1=%p",ctrl1);
    ctrl1=8'hf1;
    $display("ctr1=%p",ctrl1);
  end
endmodule
