import std.stdio,std.conv,std.string,std.algorithm;
void main(){
  auto ab=readln().chomp().split().map!(to!int);
  int a=ab[0],b=ab[1];
  
  if(a%2==0 || b%2==0) writeln("Odd");
  else writeln("Even");
  
}