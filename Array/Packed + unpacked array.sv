//packed + unpacked array
module tb;
  logic [3:0][0:2]n_data[3][4];
  initial begin    
    foreach(n_data[i])begin
      foreach(n_data[i][j])begin
        n_data[i][j]=$random;
        $display("n_data[%0d][%0d]=%0h ",i,j,n_data[i][j]);
      end
    end
    $display("data_n=%p",n_data);
    $display("data[1][2]=%0h",n_data[1][2]); 
  end
endmodule
