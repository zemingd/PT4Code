package main

import (
  "fmt"
  "math"
)

func main() {
  var n, s int
  fmt.Scan(&n)

  x := make([]float64, n)
  y := make([]float64, n)
  for i := 0; i < n; i++ {
      fmt.Scan(&xs[i], &ys[i])
  }
  
  for i := 0; i < (n-1); i++ {
    for j := 1; i < j < n; j++ {
      s += math.Sqrt(((x[i]-x[j])*(x[i]-x[j])) + ((y[i]-y[j])*(y[i]-y[j])))
    }
  }
  fmt.Println(s*2/n)
}