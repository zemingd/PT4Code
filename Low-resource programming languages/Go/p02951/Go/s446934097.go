package main

import (
  "fmt"
)

func maxInt(a ...int) int {m := a[0]; for _, x := range a {if x > m {m = x}}; return m}
func minInt(a ...int) int {m := a[0]; for _, x := range a {if x < m {m = x}}; return m}

func main() {
  var a, b, c int
  fmt.Scan(&a, &b, &c)
  var r int = maxInt(0, b + c - a)
  fmt.Println(r)
}