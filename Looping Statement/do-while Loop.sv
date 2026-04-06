
//do - while loop
module tb3;
  int count;
  initial begin
    while (count<3)begin
      count++;
      $display("count=%0d",count);   
    end
    do begin
      $display("count *=%0d",count); 
      count++;
    end while (count<6);
  end
endmodule 

module tb4;
  int count;
  initial begin
    while (count!=0)begin
      count++;
      $display("count=%0d",count); 
    end
     do begin
      $display("count *=%0d",count); 
       count++;
     end while (count == 0);
  end
endmodule
    
      
