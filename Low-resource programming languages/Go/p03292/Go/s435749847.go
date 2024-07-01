package main
 
import (
  "fmt"
)
 
func main() {
  var a1, a2, a3 int
  fmt.Scanf("%d %d %d", &a1, &a2, &a3)

  ans := 0
  max := a1
  min := a1
  if a2 > a1 && a2 > a3 {
    max = a2
  }
  if a3 > a1 && a3 > a2 {
    max = a3
  }
  if a2 < a1 && a2 < a3 {
    min = a2
  }
  if a3 < a1 && a3 < a2 {
    min = a3
  }
  
  ans = max - min
  fmt.Printf("%d\n", ans)
}