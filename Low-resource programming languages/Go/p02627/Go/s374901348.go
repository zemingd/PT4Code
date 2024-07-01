package main

import (
  "fmt"
  "strings"
)

func main() {
  var s string 
  fmt.Scan(&s)
  if s == strings.ToUpper(s) {
    fmt.Println("A")
  } else {
    fmt.Println("B")
  }
}