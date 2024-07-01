package main
 
import (
  "fmt"
)
 
func main() {
  var k, a, b int
  fmt.Scanf("%d", &k)
  fmt.Scanf("%d %d", &a, &b)
  
  ans := "NG"
  if a % k == 0 {
    ans = "Yes"
  }
  if (a/k) < (b/k) {
    ans = "Yes"
  }
  fmt.Printf("%s\n", ans)
}