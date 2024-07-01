package main

import (
  "fmt"
)

func main() {
  var n, k int
  var s string
  fmt.Scan(&n)
  fmt.Scan(&k)
  fmt.Scan(&s)
  k -= 1
  if s[k-1:k] == "A" {
    s[k-1:k] = "a"
  }	else if s[k-1:k] == "B" {
    s[k-1:k] = "b"
  }	else if s[k-1:k] == "C" {
    s[k-1:k] = "c"
  }
  fmt.Println(s)
}