package main

import (
  "fmt"
)

func main() {
  var a int
  var s string
  fmt.Scan(&a)
  fmt.Scan(&s)
  
  if (a >= 3200 ) {
    fmt.println(s)
  } else {
    fmt.println("red")
  }
}