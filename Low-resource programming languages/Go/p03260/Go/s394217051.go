package main
 
import (
  "fmt"
)
 
func main() {
  var a, b int
  fmt.Scanf("%d %d", &a, &b)

  ans := "Yes"
  if a % 2 == 0 {
    ans = "No"
  }
  if b % 2 == 0 {
    ans = "No"
  }

  fmt.Printf("%s\n", ans)
}