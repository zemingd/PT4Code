package main

import (
  "fmt"
)

func main() {

  var x, a int

  fmt.Scan(&x, &a)

  if x >= a {
    fmt.Println("10")
  } else {
    fmt.Println("0")
  }
}