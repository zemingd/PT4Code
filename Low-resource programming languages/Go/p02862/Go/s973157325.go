package main

import (
  "fmt"
  "math"
)

func main() {
  var x, y int
  fmt.Scan(&x, &y)
  
  if ((-x+2*y) > 0 && (-x+2*y)%3 == 0) && ((2*x-y) > 0 && (2*x-y)%3 == 0) {
    a := (-x+2*y)/3
    b := (2*x-y)/3
    p := 1
    for k := a+b; b < k; k-- {
      p *= k
    }
    for n := a; 0 < n; n-- {
      p /= n
    }
    fmt.Println(float64(p)/(math.Pow(10, 9) + 7))
  }
}