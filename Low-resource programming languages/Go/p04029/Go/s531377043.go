package main
 
import (
	"fmt"
)
 
func main() {
  var n int
  fmt.Scanf("%d", &n)
  ans := n*(n+1)/2
  
  fmt.Printf("%d", ans)
}