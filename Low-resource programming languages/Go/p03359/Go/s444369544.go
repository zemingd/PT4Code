package main
 
import (
  "fmt"
)
 
func main() {
  var a, b int
  fmt.Scanf("%d %d", &a, &b)
  
  ans := a
  if b < a { 
    ans--
  }
  
  fmt.Printf("%d\n", ans)
}