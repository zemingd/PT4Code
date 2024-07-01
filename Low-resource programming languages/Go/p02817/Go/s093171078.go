package main

import (
	"fmt"
)

func main() {
  var s, t string
  fmt.Scanf("%s %s", &s, &t)
  ans := t + s
  
  fmt.Printf("%s\n", ans)
}