// Associative Array Method
module tb;
  int rollno[string];
  initial begin
    rollno = '{"Dhanu":34,"krithi":43,"Kailash":3,"Aruna":6,"suji":55,"swathi":56};
    $display("rollno.size()=%0d",rollno.size());
    $display("rollno.num()=%0d",rollno.num());
    begin
      string f;
      if(rollno.first(f))
      $display("rollno.first(%s)=%0d",f,rollno[f]);
      if(rollno.last(f))
        $display("rollno.last(%s)=%0d",f,rollno[f]); 
      if(rollno.prev(f))
        $display("rollno.prev(%s)=%0d",f,rollno[f]);  
    end   
   begin
      string f="Aruna";
      if(rollno.next(f))
        $display("rollno.next(%s)=%0d",f,rollno[f]); 
    end
    if(rollno.exists("abi"))
      $display("found rollno=%0d",rollno["abi"]);
    else
      $display("Not Found");
  end
endmodule
