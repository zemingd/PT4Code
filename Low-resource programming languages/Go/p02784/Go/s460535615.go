package main
 
import "fmt"
 
func main(){
	var a,b int;
  	
    fmt.Scan(&a,&b);
  for i:=0;i<b;i++{
    var k int;
    fmt.Scan(&k);
  	a=a-k;
  }
  if(a<=0){
  	fmt.Println("Yes");
  }else{
    fmt.Println("No");
  }
  }
