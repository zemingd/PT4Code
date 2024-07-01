package main
 
import (
  "fmt"
)
 
func main() {
  var s, w int
  fmt.Scanf("%d %d", &s, &w)

  ans := "unsafe"
  if s > w {
  	ans = "safe"
  }
  fmt.Printf("%s\n", ans)
}