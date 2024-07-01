package main

import (
  "fmt"
)

func main() {
  var x, a int
  fmt.Scanf("%d %d", &x, &a)
  
  ans := 10
  if x < a {
    ans = 0
  }
    
  fmt.Printf("%d\n", ans)
}