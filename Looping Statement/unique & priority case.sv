// unique case
//multiple match
module tb;
  bit[1:0] state;
initial begin
  state = 2'b00;
  unique casex(state)
    2'b00:$display("1.found");
    2'b0x:$display("2.found");
    2'b11:$display("3.found");
  endcase
end
endmodule
  
module tb1;
  bit[1:0] state;
initial begin
  state = 2;
  unique0 case(state)
    0:$display("0.found");
    1:$display("1.found");
    3:$display("3.found");
  endcase
end
endmodule

//priority case
module tb2;
  bit[1:0] state;
initial begin  
  $display("priority");
  state = 3;
  priority case(state)
    0:$display("0.found");
    2:$display("1.found");
    2:$display("3.found");
  endcase
end
endmodule

module tb3;
  bit[1:0] state;
initial begin
  state = 2'b00;
  unique casex(state)
    2'bx0:$display("1.found");
    2'b0x:$display("2.found");
    2'b11:$display("3.found");
  endcase
end
endmodule
