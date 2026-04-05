// Array of Structure
typedef struct { string subject;
                int hallno;} exam;
module tb;
  exam f_array[3];
  exam d_array[];
  exam a_array[int];
  
  initial begin 
    foreach(f_array[i])begin
      f_array[i].subject = $sformatf("Subject %0d",i);
      f_array[i].hallno = i*4;
      $display("f_array[%0d] subject = %s,hall no = %0d",i,f_array[i].subject,f_array[i].hallno);
    end
    
    d_array = new[5];
    foreach(d_array[i])begin
      d_array[i].subject = $sformatf("Subject %0d",i);
      d_array[i].hallno = i*10;
      $display("d_array[%0d] subject = %s,hall no = %0d",i,d_array[i].subject,d_array[i].hallno);
    end
    
    a_array[6]='{subject:"Verilog",hallno:10};
    a_array[12]='{subject:"sv",hallno:5};
    a_array[1]='{subject:"digital",hallno:15};
    foreach(a_array[i])begin
      $display("a_array[%0d] subject = %s,hall no = %0d",i,a_array[i].subject,a_array[i].hallno);
    end      
  end
endmodule
