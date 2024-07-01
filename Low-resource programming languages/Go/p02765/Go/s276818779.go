package main
 
import (
	"fmt"
)
 
func main() {
  var n, r int
  fmt.Scanf("%d %d", &n, &r)
 
  ans := r
  if n < 10 {
    ans += 100 * (10 - n)
  }
  fmt.Printf("%d\n", ans)
}
package main