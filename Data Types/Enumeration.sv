//Enumeration

 module tb;
   enum {suji,rithi,hema,kaaru} data1;
  initial begin 
    data1 = hema;
    $display("data1 %0d = %s ",data1,data1.name);
  end
endmodule 

// typedef enum
module tb;
  typedef enum {suji,rithi,hema}data1;
  typedef enum {kaaru=4,kiruba=7,keerthi}data2;
  
 initial begin 
  data1 name1;   
  data2 name2; 
   name1 = rithi;
   name2 = keerthi;   
   $display("name1 [%0d]=%s",name1,name1.name);
   $display("name2 [%0d]=%s",name2,name2.name);
   // enum method
   $display("name1.first()=%0d",name1.first()); 
   $display("name1.last()=%0d",name1.last());
   $display("name2.prev()=%0d",name2.prev());
   $display("name1.next()=%0d ",name1.next());
   $display("name1.num()=%0d",name1.num());
  //explicitly cast 
   name2 = data2'(7);
    $display("name2 =%s",name2.name);
   if(name1 == rithi |  name1== 2)
     $display("name1 is %s",name1.name);
  end
endmodule
  
