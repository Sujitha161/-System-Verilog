module tb;
  int array[] = '{ 7, 8, 1, 0, 0, 1, 5, 8, 5, 8};
  int res[];
  int data[]= '{12,0,3,4,6,6,7,8,9};
initial begin 
  // with clause
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
  // optional with clause
  res=array.min();
  $display ("min:%p",res);
  res=array.min(x) with (x<7);
  $display ("min_with:%p",res);
  res=array.max();
  $display ("max:%p",res);
  res=array.max(x) with (x>3);
  $display ("max_with:%p",res);
  res=array.unique();
  $display ("unique:%p",res);
  res=array.unique_index();
  $display ("unique_index:%p",res);
  res=array.unique(x) with (x<7);
  $display ("unique_with:%p",res);
  //ordering
  data.reverse();
  $display("reverse:%p",data);
  data.sort();
  $display("sort:%p",data);
  data.rsort();
  $display("rsort:%p",data);
  data.shuffle();
  $display("shuffle:%p",data);
  //Reduction method
  $display("sum=%d",array.sum());
  $display("product=%d",data.product());
  $display("and=%b",op.and());
  $display("or=%b",data.or());
  $display("xor=%b",op.xor());
end
endmodule
