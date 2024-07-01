package main

import (
  "fmt"
)

func abs(a int) int {
  if a < 0 {
    return -a
  }
  return a
}

func main() {
  var N int
  fmt.Scan(&N)
  
  h := make([]int, N)
  for i := 0; i < N; i++ {
    fmt.Scan(&h[i])
  }
  
  dp := make([]int, N)
  for i := 1; i < N; i++ {
    dp[i] = abs(h[i-1] - h[i]) + dp[i-1]
    if i > 1 {
      if p := abs(h[i-2] - h[i]) + dp[i-2]; dp[i] > p {
        dp[i] = p
      }
    }
  }
  fmt.Println(dp[N-1])
}