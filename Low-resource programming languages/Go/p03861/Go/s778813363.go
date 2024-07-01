package main

import "fmt"

func main() {
  var a, b, x int

  fmt.Scanf("%d %d %d", &a, &b, &x)

  min := int(a/x) * x
  if min < a {
    min = min + x
  }
  if b < min {
    fmt.Println(0)
    return
  }
  d := ((b - min) / x) + 1

  fmt.Println(d)
}