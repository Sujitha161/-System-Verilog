//Both handle points to same object
class sample;
  bit en;
  logic [3:0] count;
  function new (logic [3:0]count= 4'b1010);
    this.en= 1;
    this.count= count;
  endfunction
  function display();
    $display("en=%0b , count=%0b",en,count);
  endfunction
endclass:sample
module tb_sample;
  sample a1,a2;
  initial begin
    a1=new();
    a1.display;
    a2=a1; // a2 and a1 shares same location
    a2.display;
    a2.count=4'b1101;
    a2.en=0;
    a1.display; //changes made in a2 reflect on a1
    a2.display;
    a2=new(); // new object for a2
    a2.en=1;
    a2.display;
    a1.display; // changes made in a2 doen't reflect on a1
    a1.count=4'b1111;
    a2.display;
    a1.display; 
  end
    endmodule
    
