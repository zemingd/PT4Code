package main

import (
	"fmt"
)

func main() {
  var w int
  var h int
  var x int
  var y int
  fmt.Scan(&w, &h, &x, &y)
  sur := w * h
  
  var varT bool
  var horiT bool
  varSur := float64(sur) - ( float64(sur * ((w - x) / w) ) )
  horiSur := float64(sur) - ( float64(sur * ((h - y) / h) ) )
  if w / 2 == x {
    varT = true
  }
  if h / 2 == y {
    horiT = true
  }
  
  if horiT && varT {
    fmt.Printf("%f %d", float64(sur / 2), 1)
  } else if horiT || varT {
    fmt.Printf("%f %d", float64(sur / 2), 0)
  } else if varSur == horiSur {
    fmt.Printf("%f %d", varSur, 1)
  } else if varSur < horiSur {
    fmt.Printf("%f %d", varSur, 0)
  } else {
    fmt.Printf("%f %d", horiSur, 0)
  }
}