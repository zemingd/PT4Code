package main

import (
  "fmt"
  "math"
)

func main() {
  var w, h int64
  fmt.Scanf("%d %d", &h, &w)
  if w > h {
    fmt.Printf("%.0f", math.Trunc(float64(w)/2.0 * float64(h) + 0.5))
  } else {
    fmt.Printf("%.0f", math.Trunc(float64(h)/2.0 * float64(w) + 0.5))
  }
}