package main

import "fmt"

func main() {
  var a int
  s := "red"
  fmt.Scan(&a)
  if a >= 3200 {
    fmt.Scan(&s)
  }
  fmt.Printf(s)
}