package main

import (
	"fmt"
  "math"
)

// inspired by https://tour.golang.org/flowcontrol/8
// https://gist.github.com/alenbasic/108417acbff63d765f9da5e036fc018b
// https://gist.github.com/abesto/3476594

// func Sqrt(loop int, seed, square float64) float64 {
//
// 	x := seed
// 	for i := 0; i < loop; i++ {
// 		x = x - ((x*x)-square)/(2*x)
// 	}
// 	return x
//
// }
const DELTA = 0.0000001
const INITIAL_Z = 100.0

func Sqrt(x float64) (z float64) {
    z = INITIAL_Z

    step := func() float64 {
    	return z - (z*z - x) / (2 * z)
    }

    for zz := step(); math.Abs(zz - z) > DELTA
    {
    	z = zz
	zz = step()
    }
    return
}

func main() {
  var a,b,c float64
  fmt.Scan(&a)
  fmt.Scan(&b)
  fmt.Scan(&c)

  ra := Sqrt(a)
  rb := Sqrt(b)
  rc := Sqrt(c)
  left := ra+rb

  if left < rc {
    fmt.Println("Yes")
  } else {
    fmt.Println("No")
  }
}
