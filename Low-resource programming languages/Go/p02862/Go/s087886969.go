package main

import (
  "fmt"
)

func main() {
  var x, y int
  fmt.Scan(&x, &y)
  
  if ((-x+2y) > 0 && (-x+2y)%3 == 0) && ((2x-y) > 0 && (2x-y)%3 == 0) {
    a := (-x+2y)/3
    b := (2x-y)/3
    p := 1
    for k := a+b; b < k; k-- {
      p *= k
    }
    for n := a; 0 < n; n-- {
      p /= n
    }
    fmt.Println(p/(math.Pow(10, 9) + 7))
  }