// Associative array
module tb;
  int array[int];
  int rollno[string];
  string status[string];
  
  initial begin
    array='{16:21,05:02};
    rollno='{"suji":55,"swathi":56};
    status='{"Dhanu":"Pass","Krithi":"Pass"};  
    $display("array=%p",array);
    $display("rollno=%p",rollno);
    $display("status=%p",status);
    foreach(array[i])begin
      $display("array[%0d]=%0d",i,array[i]);    
    end 
    foreach(rollno[i])begin
      $display("rollno[%0s]=%0d",i,rollno[i]);
    end
    foreach(status[i])begin
      $display("status[%0s]=%0s",i,status[i]);
    end
    end
endmodule
