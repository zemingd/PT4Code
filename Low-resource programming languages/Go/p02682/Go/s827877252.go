package main
import (
	"fmt"
)

func main() {
  var a, b, c, k, ans int
  fmt.Scan(&a)
  fmt.Scan(&b)
  fmt.Scan(&c)
  fmt.Scan(&k)
  if a <= k {
    ans += a
  } else { 
    ans += k
  }
  k = k - a - b

  if k > 0 {
    ans -= k
  }
	fmt.Printf("%v\n", ans)
}