package main

import (
  "fmt"
  "math"
)

func main() {
  var s, t string
  fmt.Scan(&s)
  fmt.Scan(&t)
  var i, j ,ans int
  ans = 10000
  for i = 0; i < len(s)-len(t)+1; i++ {
    x := 0
    for j=0; j < len(t); j++ {
      if s[i:i+1] != t[j+1] {
        x++;
      }
    }
    ans = Min(ans, x)
  }
  fmt.Println(ans)
}