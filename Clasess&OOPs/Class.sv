// class
class sample;
  bit en;
  logic [3:0] count;
  function new (logic [3:0]count= 4'b1010);
    this.en= 1;
    this.count= count;
  endfunction
  function display();
    $display("en=%0b , count=%0b",this.en,this.count);
  endfunction
endclass:sample

module tb_sample;
  sample a;
  sample b;
  initial begin
    a=new();
    a.display();
    
    b=new(4'b1000);
    b.display();
    
  end
endmodule
  
