package main

import (
  "fmt"
)

var mod = int64()

func main() {
  var (
    s string
  )
  fmt.Scan(&s)

  if s == "AAA" || s == "BBB" {
    fmt.Println("No")
  } else {
    fmt.Println("Yes")
  }
