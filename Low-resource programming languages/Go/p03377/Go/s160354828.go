package main
 
import (
  "fmt"
)
 
func main() {
  var a, b, x int
  fmt.Scanf("%d %d %d", &a, &b, &x)
  
  ans := "YES"
  if x < a {
    ans = "NO"
  }
  if x > a + b {
    ans = "NO"
  }
 
  fmt.Printf("%s\n", ans)
}