package main

import (
  "fmt"
)

func main() {
  var n int
  fmt.Scanf("%v", &n)
  var p []int
  for i:=0;i<n;i++ {
    pp := 0
    fmt.Scanf("%v", &pp)
    p = append(p, pp)
  }
  sum := 0
  for i:=0;i<n-2;i++ {
    if (p[i]<p[i+1] && p[i+1]<p[i+2]) || (p[i]>p[i+1] && p[i+1]>p[i+2]) {
      sum ++
    }
  }
  fmt.Println(sum)
}
