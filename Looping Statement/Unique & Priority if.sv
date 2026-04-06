// Unique
//multiple match
module tb;
  int x=6;
  initial begin
    unique if(x==6)
      $display("true");
    else if (x==6 | x==5)
    $display("next true");
    else
      $display("false"); 
  end
endmodule 

module tb1;
  int x=6;
  initial begin
    unique if(x==3)
      $display("true");
    else if (x==4 | x==5)
    $display("next true");
  end
endmodule 

// priority
//multiple match
module tb2;
  int x=6;
  initial begin
    priority if(x==6)
      $display("true");
    else if (x != 5)
    $display("next true");
    else
      $display("false"); 
  end
endmodule 

module tb3;
  int x=6;
  initial begin
    priority if(x==3)
      $display("true");
    else if (x==4 | x==5)
    $display("next true");
  end
endmodule 
