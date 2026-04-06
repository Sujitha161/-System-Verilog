// Queue
module tb;
  int b[$:5]; // bounded queue
  int num[$]='{1,2,3,4,5,6}; //unbounded queue
  int q[$];
  initial begin
    $display("1st element of queue = %0d ",num[0]);
    $display("last element of queue = %0d ",num[$]);
    $display("num element =%p",num);
    foreach(num[i])
      $display("num [%0d] = %0d",i,num[i]);
     $display("subset num =%p",num[2:5]);
    num=num[1:$];// delete 1st element
    $display("num element =%p",num);
    num=num[0:$-1];//delete last element
    $display("num element =%p",num);
    num=num[1:$-1];//delete 1st and last element
    $display("num element =%p",num);
    q.insert(0,15);
    q.insert(1,10);
    q={q,23}; //Append
    $display("q element =%p",q);
    q={100,q};
    $display("q element =%p",q);
    q[1]=30; //replace
    $display("q element =%p",q);
    q={};//delete
    $display("q element =%p",q);  
  end
endmodule
