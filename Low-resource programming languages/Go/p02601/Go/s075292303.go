package main
 
import (
	"fmt"
)
 
func main() {
  var a, b, c int
  var k int
  
  fmt.Scanf("%d %d %d", &a, &b, &c)
  fmt.Scanf("%d", &k)
  
  for i := 0; i < k; i++{
    if a < b && b < c {
      break
    }
    if a >= b{
      b *= 2
      continue
    }
    if b >= c{
      c *= 2
      continue
    }
  }
  
  ans := "Yes"
  if a >= b {
    ans = "No"
  }
  if b >= c {
    ans = "No"
  }
  
  fmt.Printf("%s\n", ans)
}