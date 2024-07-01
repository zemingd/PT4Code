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
  sum := float64(w * h)
  
  var varT bool
  var horiT bool
  if w / 2 == x {
    varT = true
  }
  if h / 2 == y {
    horiT = true
  }
  
  if horiT && varT {
    fmt.Printf("%f %d", sur / 2, 1)
  } else if horiT || varT {
    fmt.Printf("%f %d", sur / 2, 0)
  } else {
    varSur := sur - sur * ((w - x) / w) ) 
    horiSur := sur - sur * ((h - y) / h) ) 
    if varSur == horiSur {
      fmt.Printf("%f %d", varSur, 1)
    } else if varSur < horiSur {
      fmt.Printf("%f %d", varSur, 1)
    } else {
      fmt.Printf("%f %d", horiSur, 1)
    }
  }
}