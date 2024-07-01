package main
 
import (
	"fmt"
)
 
func main() {
  var w float64
  var h float64
  var x float64
  var y float64
  fmt.Scan(&w, &h, &x, &y)
  if h == y {
    fmt.Printf("%f 0", 0)
  }
  sur := w * h
  
  var varT bool
  var horiT bool
  if w / 2.0 == x {
    varT = true
  }
  if h / 2.0 == y {
    horiT = true
  }
  
  if horiT && varT {
    fmt.Printf("%f %d", sur / 2.0, 1)
  } else if horiT || varT {
    fmt.Printf("%f %d", sur / 2.0, 0)
  } else {
    varSur := sur - sur * ((w - x) / w)
    horiSur := sur - sur * ((h - y) / h)
    if varSur == horiSur {
      fmt.Printf("%f %d", varSur, 1)
    } else if varSur < horiSur {
      fmt.Printf("%f %d", varSur, 0)
    } else {
      fmt.Printf("%f %d", horiSur, 0)
    }
  }
}