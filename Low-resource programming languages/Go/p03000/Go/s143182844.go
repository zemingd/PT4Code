package main

import (
	"fmt"
)

func main() {
  var n int
  var x int
  var l []int
  fmt.Scan(&x)
  fmt.Scan(&a)
  fmt.Scan(&l)
  
  var count int
  var tmpSum int
  var f int
  for i, v := range l {
    tmpSum += v
    if tmpSum > x {
      return i - 1
    }
  }
  return 0
}