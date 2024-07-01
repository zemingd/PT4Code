package main
import (
  "fmt"
  "math"
)
func main() {
  var n, k int
  fmt.Scan(&n, &k)
  if n == k {
    fmt.Println(1)
    return
  }
  as := make([]int, n)
  for i := 0; i < n; i++ {
    fmt.Scan(&as[i])
  }
  var targetIndex int
  for i, a := range as {
    if a == 1 {
      targetIndex = i
    }
  }
  result := 0
  if 0 < targetIndex {
    result += int(math.Ceil(float64(targetIndex)/float64(k-1)))
  }
  if targetIndex < n-1 {
    result += int(math.Ceil(float64(n-targetIndex-1)/float64(k-1)))
  }
  fmt.Println(result)
}