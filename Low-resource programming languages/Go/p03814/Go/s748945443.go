package main

import (
  "fmt"
  "strings"
)

func main() {
  var s string
  fmt.Scan(&s)

  findA := strings.Index(s, "A")
  findZ := strings.LastIndex(s, "Z")

  fmt.Println(findZ - findA + 1)
}