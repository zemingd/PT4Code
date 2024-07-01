package main

import (
  "fmt"
)

func main()  {
  var a, b int
  fmt.Scan(&a, &b)
  if a * b % == 0 {
    fmt.Println("Even")
    return
  }
  fmt.Println("Odd")
}
