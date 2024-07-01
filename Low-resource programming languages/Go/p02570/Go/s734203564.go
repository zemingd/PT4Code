package main

import (
  "fmt"
  "math"
)

func main() {
  var s, t string
  fmt.Scan(&s)
  fmt.Scan(&t)
  var i, j int
  var ans float64
  var an float64 = 10000
  for i = 0; i < len(s)-len(t)+1; i++ {
    x := 0
    for j=0; j < len(t); j++ {
      if s[i:i+1] != t[j:j+1] {
        x++;
      }
    }
    var fltx float64
    fltx = float64(x)
    ans = math.Min(an, fltx)
  }
  fmt.Println(ans)
}
