package main
 
import (
  "fmt"
  "math"
)
 
func main() {
  var n, m int
  fmt.Scan(&n, &m)
  a := make([]int, m)
  for i := range a {
    fmt.Scan(&a[i])
  }
  ans := 0
  for i := range a {
    ans += a[i]
  }
  fmt.Println(math.Max(float64(n - ans), -1))
}