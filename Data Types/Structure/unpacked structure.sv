// structure
module tb;
  struct{ string name;
          int rollno;
         byte mark;} student;
  initial begin 
    student = '{"Arun",6,95};
    $display("student data = %p",student);
    student.name = "hema";
    student.rollno = 25;
    $display("student data = %p",student);
  end
endmodule
// Unpacked Structure

typedef struct { string name;
          int rollno;
         byte mark;} student;
module tba;
  initial begin
  student data1 = '{"Arun",6,95};
  student data2 ;
  $display("student data1 = %p , data2=%p",data1,data2);
  data2 = data1;
  $display("student data1 = %p , data2=%p",data1,data2);
  data2.name = "hema";
  $display("student data1 = %p , data2=%p",data1,data2);
  end 
endmodule
