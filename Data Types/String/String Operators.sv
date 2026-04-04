//string
module tb;
  string name = "Sujitha";
  string lastname = "sivakumar";
  
  initial begin
    $display("name=%s",name);
    foreach(name[i])begin
      $display("name[%0d]=%s",i,name[i]);
    end
    //string operator   
    begin
      if(name == lastname)
        $display("name=%s is equal to lastname=%s",name,lastname);
      else //(name != lastname)
        $display("name=%s is not equal to lastname=%s",name,lastname);
    end
    begin
      if(name < lastname)
        $display("name=%s is less than lastname=%s",name,lastname);
      else
        $display("name=%s is greater than lastname=%s",name,lastname);
    end
    $display("full name=%s",{name," ",lastname});
    $display("name=%s",{3 {name}});
    $display("name[3]=%s,lastname[4]=%s",name[3],lastname[4]);
end
endmodule
      
