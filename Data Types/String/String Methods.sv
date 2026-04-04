//string methods
module tb;
  string name="sujitha";
  string role="VLSI"; 
  initial begin
    $display("length of %s=%0d",name,name.len());
    name.putc(0,"p");
    $display("name.putc = %s", name);
    $display("name.getc(5) = %s",name.getc(5));
    $display("role tolower = %s",role.tolower());
    // compare the ASCII vale of string
    $display("name compare with role =%0d",name.compare(role));
    name = "sujitha";
    $display("name compare with name =%0d",name.compare(name));//return 0 if equal , return 1 if A > B , return -1 if A < B 
    $display("name icompare with name =%0d",name.icompare(role));//ignore Case
    $display(" shortname = %s",name.substr(0,3));
    
  end
endmodule
