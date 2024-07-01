package main

import (
    "fmt"
    "math"
)

func main() {
  var a, b, c, max float64
  fmt.Scan(&a, &b, &c)
  max = math.Max(a, math.Max(b, c))
  fmt.Println(a + b + c + max * 9)
}