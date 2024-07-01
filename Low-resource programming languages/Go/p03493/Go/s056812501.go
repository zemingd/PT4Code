package main

import (
  "fmt"
)

func main() {
  var a, n int
  fmt.Scan(&a)
  if a/100 > 0 {
    n++
    a -= 100
  }
  if a/10 > 0 {
    n++
    a -= 10
  }
  if a > 0 {
    n++
  }
  fmt.Println(n)
}