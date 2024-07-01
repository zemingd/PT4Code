package main

import (
  "fmt"
)

func main() {
  var p, q, r int
  fmt.Scanf("%d %d %d", &p, &q, &r)
  
  ans := r
  if p + q < r {
    ans = p + q
  }
  fmt.Printf("%d\n", ans)
}