//unpacked array
module tb;
  byte data[10][3];
  logic [3:0][0:2]n_data[3][4];
  initial begin
    foreach(data[i])begin
      foreach(data[i][j])begin
        data[i][j]=$random;
        $display("data[%0d][%0d]=%0d",i,j,data[i][j]);
    end
    end
    $display("data=%p",data);
  end
endmodule
