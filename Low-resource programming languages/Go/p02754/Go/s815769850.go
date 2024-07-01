package main 
import ("fmt")

func main(){

  var a,b,c int;

  fmt.Scanf("%d %d %d", &a, &b, &c );
  
    fmt.Println(b*(a/(b+c)) + (a%(b+c)));
}