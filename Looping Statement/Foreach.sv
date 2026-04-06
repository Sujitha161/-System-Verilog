
//foreach loop
module tb1;
  logic [3:0][7:0][2:0]data;
  initial begin
    data=$random;
    foreach(data[i])begin
      foreach (data[i][j])begin
        $display("data[%0d][%0d]=%0b",i,j,data[i][j]);
      end
    end
  end
endmodule

      
    
