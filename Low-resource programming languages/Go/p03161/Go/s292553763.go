package main

import (
  "fmt"
)

func abs(a int) int {
  if a > 0 {
    return a
  }
  return -a
}

func main() {
  var N, K int
  fmt.Scan(&N, &K)
  
  h := make([]int, N)
  dp := make([]int, N)

  fmt.Scan(&h[0])
  dp[0] = 0
  for i := 1; i < N; i++ {
    fmt.Scan(&h[i])
    dp[i] = 10000 * 100
    for j := 1; j <= K && j <= i; j++ {
      p := abs(h[i-j] - h[i]) + dp[i-j]
      if dp[i] > p {
        dp[i] = p
      }
    }
  }
  fmt.Println(dp[N-1])
}