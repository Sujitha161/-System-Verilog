//packed array
module tb;
  logic [0:3][3:0]data;
  bit [1:0][2:0][3:0]n_data;
  initial begin
    //2D
    data=$random;
    $display("data=%h %b",data,data);
    for (int  i=0;i<$size(data);i++) begin
      $display("data[%0d]=%b [%h]",i,data[i],data[i]);
    end 
    //3D
    n_data=$random;
    $display("n_data=%b",n_data);
    foreach(n_data[i])begin
      $display("n_data[%0d]=%b",i,n_data[i]);
      foreach(n_data[i][j])begin
        $display("n_data[%0d][%0d]=%b",i,j,n_data[i][j]);
      end
    end
  end
endmodule
