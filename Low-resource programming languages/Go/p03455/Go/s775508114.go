package main

import (
  "fmt"
)

func main() {
  var a, b int
  fmt.Scan(&a, &b)
  if ab := a : b; ab % 2 == 0 {
    fmt.Println("Even")
  } else {
    fmt.Println("Odd")
  }
}
