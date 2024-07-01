package main
 
import (
	"fmt"
)
 
func main() {
	var a, b, c, d int
    fmt.Scanf("%d %d %d %d"&a,&b,&c,&d);
  max := a*c;
  for i:=a;a<=b;i++ {
    for j:=c;c<=d;c++ {
      if i*j > max {
      	max = i*j;
      }
    }
  }
  fmt.Printf("%d\n",max);
}