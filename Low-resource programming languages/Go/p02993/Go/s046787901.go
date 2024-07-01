package main

import (
  "fmt"
)

func main() {
  var s string
  fmt.Scanf("%s", &s)
  
  ans := "Good"
  for i := 0; i < 3; i++ {
    if s[i:i+1] == s[i+1:i+2] {
      ans = "Bad"
    }
  }
  
  fmt.Printf("%s\n", ans)
}