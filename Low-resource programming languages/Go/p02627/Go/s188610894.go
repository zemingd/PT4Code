package main

import (
  "fmt"
  "strings"
)

func main() {
  var s string
  fmt.Scanf("%s", &s)
  
  ans := ""
  if s == strings.ToLower(s) {
    ans = "a"
  }
  if s == strings.ToUpper(s) {
    ans = "A"
  }
  
  fmt.Printf("%s\n", ans)
}