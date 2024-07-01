package main
 
import (
	"fmt"
)
 
func main() {
  var n, m int
  fmt.Scanf("%d %d", &n, &m)
  ans := "No"
  
  if n == m {
    ans = "Yes"
  }
  fmt.Printf("%s\n", ans)
}