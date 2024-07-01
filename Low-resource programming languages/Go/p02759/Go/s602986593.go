package main
 
import (
	"fmt"
)
 
func main() {
  var n int
  fmt.Scanf("%d", &n)
 
  ans := n / 2
  if n % 2 != 0 {
    ans++
  }
  fmt.Printf("%d\n", ans)
}