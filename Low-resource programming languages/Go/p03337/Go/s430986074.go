package main
 
import (
  "fmt"
)
 
func main() {
  var a, b int
  fmt.Scanf("%d %d", &a, &b)
  
  ans := a + b
  if a - b > ans {
    ans = a - b
  }
  if a * b > ans {
    ans = a * b
  }
  
  fmt.Printf("%d\n", ans)
}