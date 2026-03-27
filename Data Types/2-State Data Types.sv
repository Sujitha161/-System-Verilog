// Data Types
// 2 state data types
module tb;
  byte a;
  bit b;
  int c;
  shortint d;
  longint e;
initial begin 
  // byte
  a = '1;
  $display("a=%b",a);
  a='hxz;
  $display("default value of byte a=%b",a);
  a = 'hax;
  $display("a=%b",a);
  // bit
  b = 1;
  $display("b=%b",b);
  b= 1'bx;
  $display("default value of bit b=%b",b);
  //int
  c = 'hfa;
  $display("c=%d c=%b",c,c);
  c='hxz;
  $display("default value of int c=%b ",c);
  //shortint
  d='hxz;
  $display("default value of shortint d=%b",d);
  d = 'haz;
  $display("d=%d d=%b",d,d);
  //longint
  e='hxz;
  $display("default value of longint e=%b",e);
  e = 'hx2;
  $display("e=%d e=%b",e,e);  
end
endmodule
