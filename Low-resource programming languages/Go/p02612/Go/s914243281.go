package main

import (
  "fmt"
)

func main() {
  var n int
  fmt.Scanf("%d", &n)
  
  ans := 1000 - (n % 1000)
  fmt.Printf("%d\n", ans)
}