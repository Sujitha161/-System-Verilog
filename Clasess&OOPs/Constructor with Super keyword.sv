class cons;
  int a;
  function new (int a=10);
    this.a=a;
  endfunction
  function void display();
    $display("a=%0d",this.a);
  endfunction
endclass:cons
module tb;
  cons c1=new;
  initial begin
    c1.display;
    c1.a=2;
    c1.display;
  end
endmodule
//----------------------------------------------------------------------//
// Constructor with Super keyword
class rack;
  int book;
  function new (int book_c=100);
    book=book_c;
  endfunction
endclass:rack

class book extends rack; 
  int page;
  string author;
  function new (string author = "suji",int page=30);
    super.new();
    this.author=author;
    this.page=page;
  endfunction
  function void display();
    $display("author=%s | page=%0d |book=%0d",author,page,book);
  endfunction
endclass:book

module lib;
  book b1,b2;
  initial begin
    b1=new;
    b1.display;
    b2=new("dhanu",25);
    b2.display;
    b1.book=105;
    b1.display;
  end
endmodule
    
    
