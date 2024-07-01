package main
import (
  "fmt"
)
func main() {
  var n, k int
  fmt.Scan(&n, &k)
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
    result += targetIndex/(k-1)
  }
  if targetIndex < n-1 {
    result += (n-targetIndex-1)/(k-1)
  }
  fmt.Println(result)
}