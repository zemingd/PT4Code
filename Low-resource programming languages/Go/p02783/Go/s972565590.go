package main

import (
	"fmt"
)

func main() {
  var h, a int
  fmt.Scanf("%d %d", &h, &a)
  ans := (h / a) + 1
  
  fmt.Printf("%d\n", ans)
}