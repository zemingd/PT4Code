package main

import (
	"fmt"
)

func main() {
  var k, x int
  fmt.Scanf("%d %d", &k, &x)
  ans := "No"
  if 500 * k >= x {
    ans = "Yes"
  }
  fmt.Printf("%s\n", ans)
}