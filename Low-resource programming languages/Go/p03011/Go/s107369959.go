package main
 
import (
  "fmt"
)
 
func main() {
  var p, q, r int
  fmt.Scanf("%d %d %d", &p, &q, &r)
  
  ans := p + q + r
  max := p
  if max < q {
    max = q
  }
  if max < r {
    max = r
  }
  
  ans -= max
  fmt.Printf("%d\n", ans)
}