package main


import (
  "fmt"
  // "strings"
  // "strconv"
)


func main () {
  var k, x float64
  fmt.Scanf("%f %f", &k, &x)
  lower := x - k + 1
  upper := x + k - 1

  for i := lower; i<=upper; i++ {
    fmt.Println(i)
  }
}


