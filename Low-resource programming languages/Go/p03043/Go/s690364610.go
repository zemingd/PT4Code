package main

import (
  "fmt"
  "math"
)

func main() {
  var N, K int
  fmt.Scan(&N, &K)
  
  ret := 0.0
  for i := 1; i <= N; i++ {
    ret += math.Pow(2, float64(-1*a(i, K))) 
  }
  fmt.Println(ret/float64(N))
  
}

func a(i, k int) int {
  l := math.Log2(float64(k/i))
  return int(math.Ceil(l))
}