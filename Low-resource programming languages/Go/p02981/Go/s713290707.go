package main

import (
  "fmt"
)

func main() {
  var n, a, b int
  fmt.Scanf("%d %d %d", &n, &a, &b)
  
  ans := b
  if a * n < b{
    ans = a * n
  }
  fmt.Printf("%d\n", ans)
}