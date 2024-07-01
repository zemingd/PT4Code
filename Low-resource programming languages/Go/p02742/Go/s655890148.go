package main

import (
  "fmt"
  "math"
)

func main() {
  var w, h int
  fmt.Scanf("%d %d", &w, &h)
  fmt.Printf("%.0f", math.Trunc(float64(w)/2.0 * float64(h) + 0.5))
}