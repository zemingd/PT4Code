package main
 
import (
  "fmt"
)
 
func main() {
  var a, p int
  fmt.Scanf("%d %d", &a, &p)
  
  p += a * 3
  ans := p / 2
  fmt.Printf("%d\n", ans)
}