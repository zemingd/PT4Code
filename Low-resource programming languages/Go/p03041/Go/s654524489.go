package main

import (
  "fmt"
  "strings"
)

func main() {
  var n, k int
  var s string
  fmt.Scan(&n)
  fmt.Scan(&k)
  fmt.Scan(&s)
  fmt.Print(strings.ToLower(s[k-1:k]))
  fmt.Println(s[k:n-k+1])
}