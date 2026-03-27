module tb;
  int array[] = '{ 7, 8, 1, 0, 0, 1, 5, 8, 5, 8};
  int res[];
initial begin 
  res = array.find(x)with(x<3);
  $display("find(x):%p",res);
  res = array.find_index with (item == 5);
  $display ("find_index:%p",res);
  res=array.find_first_index(x) with (x>5 & x<8);
  $display ("find_first_index:%p",res);
  res=array.find_first with (item < 4);
  $display ("find_first:%p",res);
  res=array.find_last with (item > 4);
  $display ("find_last:%p",res);
  res=array.min();
  $display ("min:%p",res);
  res=array.max();
  $display ("max:%p",res);
  res=array.unique();
  $display ("unique:%p",res);
  res=array.unique_index();
  $display ("unique_index:%p",res);
  
end
endmodule
