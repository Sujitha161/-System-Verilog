// 4-State data type
module tb;
  reg [2:0]a;
  time t;
  wire w;
  integer val;
  logic  data;
  real num;
  initial begin
    $display("default value of reg :%b",a);
    $display("default value of time :%t",t);
    #1;
    $display("default value of wire :%b",w);
    $display("default value of integer :%b",val);
    $display("default value of logic :%b",data);
    $display("default value of real :%f",num);
    a='bx10;
    $display("a=%b a=%d",a,a);
    //real number
    num=3.05;
    $display("num=%f",num);
    $display("num=%0.2f",num);
  end
endmodule
    
