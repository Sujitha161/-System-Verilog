//Shallow Copy
class laptop;
  string chat;
  function new (string chat="hi");
    this.chat=chat;
  endfunction:laptop
endclass:laptop
  
class phone;
    string app;
    int net_speed;
    laptop dell;
  function new (string app="insta",int net_speed=50);
    this.app=app;
    this.net_speed=net_speed; 
     dell=new;
    endfunction
    function void display();
      $display("app =%s , net_speed=%0d, chat=%s",app,net_speed,dell.chat);
    endfunction
  endclass:phone
  
  module insta_web;
    phone p1,p2;
    initial begin
    p1=new();
    p1.display;
    p2=new p1;
    p2.display();
    
    p1.app="whatsapp";
    p1.net_speed=100;
    p1.dell.chat="Are you doing well";
    p1.display;
    p2.display;
    
    p2.app="telegram";
    p2.display;
    end
  endmodule
    
  
  
