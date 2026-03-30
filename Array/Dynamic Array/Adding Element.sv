//Dynamic Array
module tb;
  byte array[];
  byte new_array[];
  
  initial begin
    array = '{1,2,3,4,5,3,32,21,16};
    $display("array=%p",array);
    
    // Adding a new element to existing array
    new_array = array;
    new_array=new[new_array.size()+1](new_array);
    new_array[new_array.size()-1]=44;
    $display("new_array=%p ",new_array);
  end
endmodule
