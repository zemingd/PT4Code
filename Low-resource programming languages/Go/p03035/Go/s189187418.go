package main

import (
  "fmt"
  "strings"
)

func main() {
  var a, b int
  fmt.Scanf("%d %d", &a, &b)
  
  ans := b
  if a < 13 {
    ans = b / 2
  }
  if a < 5 {
    ans = 0
  }
  fmt.Printf("%d\n", ans)
}