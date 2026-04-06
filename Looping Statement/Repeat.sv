
//Repeat loop
module tb2;
  bit clk;
  always #10 clk=~clk;
  initial begin
    bit[3:0]num;
    num=$random;
    $display("num=%0d",num);
    repeat(num)@(posedge clk)
      $display(" time=%0t end ",$time);
  end
endmodule

        
      
    
