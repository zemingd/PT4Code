package main

import (
	"fmt"
)

func main() {
  var k, s int
  fmt.Scanf("%d %d", &k, &s)

  ans := 0
  for x := 0; x <= k; x++ {
    for y := 0; y <= k; y++ {
      z := s - (x + y)
      if 0 <= z && z <= k {
        ans++
      }
    }
  }
  
  fmt.Printf("%d\n", ans)
}