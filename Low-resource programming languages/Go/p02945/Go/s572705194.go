package main

import (
  "fmt"
  "math"
)

func main() {
  var A, B int
  fmt.Scan(&A, &B)
  fmt.Println(math.Max(math.Max(float64(A+B), float64(A-B)), float64(A*B)))
}