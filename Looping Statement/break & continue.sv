// break - continue
module tb;
  int count;
  initial begin
    for(int i=0;i<10;i++)begin     
      $display("count=%0d",i);
      if (i == 5)
        break;
    end
  end
endmodule

module tb1;
  int num;
  initial begin
    for(int i=0;i<10;i++)begin   
      if (i == 5)
        continue;
      $display("num=%0d",i);
    end
  end
    endmodule
   
    
      
