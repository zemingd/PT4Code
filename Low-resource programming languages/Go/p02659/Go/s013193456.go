package main

import "fmt"

func main () {
  var a int
  var b float64
  fmt.Scan(&a,&b)
  bI := int(b)
  bD := b - float64(int(b))
  aI := a * bI
  aD := float64(a) * bD
  ans := float64(aI) + aD
  fmt.Println(int(ans))
}