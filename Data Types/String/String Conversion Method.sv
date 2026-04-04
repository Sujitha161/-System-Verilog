// convertion method
module tb;
  string deci = "2116";
  string bin = "1100";
  string hexa = "ac3";
  string octa = "345";
  string realnum = "3.14"; 
  int i= 2755 ;string str;
  real r = 22.7;
  initial begin
    // converting string to Numeric
    $display("num1=%0d",deci.atoi());
    $display("num2=%0d",bin.atobin());
    $display("num3=%0d",hexa.atohex());
    $display("num4=%0d",octa.atooct());
    $display("num5=%0f",realnum.atoreal());
    //Numeric to string
    // void function
    str.hextoa(i);
    $display("str=%s",str);
    str.bintoa(i);
    $display("str=%s",str);
    str.octtoa(i);
    $display("str=%s",str);
    str.itoa(i);
    $display("str=%s",str);
    str.realtoa(r);
    $display("str=%s",str); 
  end
endmodule
 
    
  
