package main

import (
  "fmt"
)

func main() {
  var s,t string
  var l,cnt  int
  fmt.Scanf("%s", &s)
  fmt.Scanf("%s", &t)

  l = len(s)
  cnt = 0

  for i := 0; i < l; i++ {
    if s[i] != t[i] {
      cnt++
    }
  }

  fmt.Println(cnt)
}