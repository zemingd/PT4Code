package main
 
import (
  "fmt"
)
 
func main() {
  var a, b int
  fmt.Scanf("%d %d", a, b)
  
  ans := 0
  if a == b {
    ans = a + b
  }
  if a > b {
    ans = a + (a - 1)
  }
  if a < b {
    ans = b + (b - 1)
  }
  
  fmt.Printf("%d\n", ans)
}