//Dynamic array
module tb;
  byte array[];
  initial begin
    array = '{1,2,3,4,5,3,32,21,16};
      foreach(array[i])begin
      $display("array[%0d]=%d",i,array[i]);
    end
    //Dynamic array functions 
    $display("array_size=%0d",array.size());
    array.delete();
    $display("array_size=%0d",array.size()); 
  end
endmodule
