package main

import (
  "fmt"
)

func main() {
  var N, K int
  fmt.Scan(&N, &K)
  E := make([]float64, N)
  for i := 0; i < N; i++ {
    var p float64
    fmt.Scan(&p)
    E[i] = (p + 1.0) / 2.0
  }
  maxs := 0.0
  for i := 0; i < N-K+1; i++ {
    s := 0.0
    for j := i; j < i+K; j++ {
      s += E[j]
    }
    if s > maxs {
      maxs = s
    }
  }
  fmt.Println(E)
  fmt.Println(maxs)
}