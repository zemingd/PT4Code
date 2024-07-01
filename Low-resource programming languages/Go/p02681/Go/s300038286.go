package main

import (
  "fmt"
)

func main() {
  var s, t string
  fmt.Scanf("%s", &s)
  fmt.Scanf("%s", &t)
  
  ans := "Yes"
  if s != t[:len(s)]{
    ans = "No"
  }
  if len(s)+1 != len(t) {
    ans = "No"
  }
  
  fmt.Printf("%s\n", ans)
}