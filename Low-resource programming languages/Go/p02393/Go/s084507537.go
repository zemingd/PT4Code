package main

import (
  "fmt"
)

func min(a, b int) int {
  if a < b {
    return a
  }
  return b
}

func max(a, b int) int {
  if a < b {
    return b
  }
  return a
}

func main() {
  var a, b, c int
  fmt.Scan(&a, &b, &c)
  minv := min(a, min(b, c))
  maxv := max(a, max(b, c))
  mid := a + b + c - (minv + maxv)
  fmt.Println(minv, mid, maxv)
}

