package main

import (
        "fmt"
        "math"
)

func main () {
  var a int
  var b float64

  fmt.Scan(&a,&b)

  bI := int(b)
  bD := b - math.Floor(b)
  aI := a * bI
  aD := float64(a) * bD
  ans := aI + int(aD)
  fmt.Println(ans)
}