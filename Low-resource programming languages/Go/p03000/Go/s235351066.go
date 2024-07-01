package main

import (
	"fmt"
)

func main() {
  var n int
  var x int
  var l []int
  fmt.Scan(&n)
  fmt.Scan(&x)
  fmt.Scan(&l)
  
  var tmpSum int
  for i, v := range l {
    tmpSum += v
    if tmpSum > x {
      fmt.Println(i - 1)
    }
  }
}