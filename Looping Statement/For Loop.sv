//For Loop
module tb;
  logic [0:3][3:0]data;
  string game[3]='{"stone","paper","scissor"};
  initial begin
    data=$random;
    $display("data=%0b",data);
    for (int  i=0;i<$size(data);i++) begin
      $display("data[%0d]=%b",i,data[i]);
    end 
    for (int i=0 ,j=game[i].len-1;i<$size(game);i++,j--)begin
      game[i][j]= "*";
      $display("game [%0d] = %s j(%0d) replaced by *",i,game[i],j);
    end
  end
    endmodule 

        
      
    
