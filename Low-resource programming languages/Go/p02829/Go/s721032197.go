package main

import (
	"fmt"
)

func main() {
  var a, b int
  fmt.Scanf("%d", &a)
  fmt.Scanf("%d", &b)
  ans := 6 - a - b
  
  fmt.Printf("%d\n", ans)
}