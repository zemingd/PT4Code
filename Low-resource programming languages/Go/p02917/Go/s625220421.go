package main
import (
  "fmt"
)

func min(a, b int) int {
  if a < b {
    return a
  }
  return b
}

func main() {
  var n int
  fmt.Scan(&n)
  bs := make([]int, n-1)
  for i := 0; i < n-1; i++ {
    fmt.Scan(&bs[i])
  }
  result := bs[0]
  for i, b := range bs {
    if i == n-2 {
      result += b
      break
    }
    result += min(b, bs[i+1])
  }
  fmt.Println(result)
}