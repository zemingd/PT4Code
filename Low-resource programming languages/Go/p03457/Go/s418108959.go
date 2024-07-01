package main

import (
  "fmt"
  "math"
)

func main() {
  var n int
  fmt.Scan(&n)
  t := make([]int, n)
  x := make([]float64, n)
  y := make([]float64, n)
  bt, bx, by := 0, 0.0, 0.0
  for i := 0; i < n; i++ {
    fmt.Scan(&t[i], &x[i], &y[i])
  }
  for i := 0; i < n; i++ {
    distance := int(math.Abs(x[i]-bx) + math.Abs(y[i]-by))
    betweenTime := t[i] - bt
    if t[i] < distance || distance%2 != betweenTime%2 {
      fmt.Println("No")
      return
    }
    bt, bx, by = t[i], x[i], y[i]
  }
  fmt.Println("Yes")
}