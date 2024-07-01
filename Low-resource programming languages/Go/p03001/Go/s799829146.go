package main

import (
	"fmt"
)

func main() {
  var w int
  var h int
  var x int
  var y int
  fmt.Scan(&w)
  fmt.Scan(&h)
  fmt.Scan(&x)
  fmt.Scan(&y)
  sur := w * h
  
  var varT bool
  var horiT bool
  if w / 2 == x {
    varT = true
  }
  if h / 2 == y {
    horiT = true
  }
  
  if horiT && varT {
    fmt.Printf("%d %d", float(sur / 2), 1)
  } else {
    fmt.Printf("%d %d", float(sur / 2), 0)
  }
}