// Queue Method
module tb;
  string name[$]='{"harshi","kiruba","kaaru","aruna","priya"};
  initial begin
    $display (" size =%0d name=%p",name.size(),name);
    name.insert(5,"suji");
    $display("name =%p ",name);
    name.delete(4);
    $display("name =%p ",name);
    //pop_front
    $display("pop=%s size=%0d name=%p",name.pop_front(),name.size(),name);
    name.push_front("hema");
    $display("pushfront size=%0d name=%p",name.size(),name);
    //pop_back
    $display("pop=%s size=%0d name=%p",name.pop_back(),name.size(),name);
    name.push_back("rithi");
    $display(" pushback size=%0d name=%p",name.size(),name);
  end
endmodule
