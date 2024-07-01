package main

import (
  "fmt"
)

func main() {
  var b string

  fmt.Scan(&b)

  if b == "A" {
    fmt.Println("T")
  } else if b == "T" {
    fmt.Println("A")
  } else if b == "G" {
    fmt.Println("C")
  } else if b == "C" {
    fmt.Println("G")
  }
}
