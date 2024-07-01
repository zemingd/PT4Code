package main

import (
    "fmt"
)

func main() {
  var a, b int
  fmt.Scan(&a, &b)
  
  if a == b {
    fmt.Print(a + a)
  } else if a > b {
    fmt.Print(2 * a - 1)
  } else {
    fmt.Print(2 * b - 1)
  }
}