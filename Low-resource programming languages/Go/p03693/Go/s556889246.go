package main

import (
  "fmt"
)

func main() {
  var r, g, b int
  
  fmt.Scanf("%d %d %d", &r, &g, &b)
  
  sum := 100*r + 10*g + b
  ans := "NO"
  if sum % 4 == 0 {
    ans = "YES"
  }
  fmt.Printf("%s", ans)
}