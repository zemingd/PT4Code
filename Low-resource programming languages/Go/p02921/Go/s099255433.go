package main

import (
	"fmt"
)

func main() {
  var s, t string
  fmt.Scanf("%s", &s)
  fmt.Scanf("%s", &t)

  ans := 0
  for i := 0; i < 3; i++{
    if s[i:i+1] == t[i:i+1] {
      ans++
    }
  }
  fmt.Printf("%d\n", ans)
}