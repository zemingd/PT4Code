package main

import (
  "fmt"
  "math"
)

func main() {
  var w, h int
  fmt.Scanf("%d %d", &w, &h)
  if w % 2 == 1 { // odd
    fmt.Println(math.Trunc(float64(w)/2.0 * float64(h) + 0.5))
  } else { // even
    fmt.Println(w/2 * h)
  }
}