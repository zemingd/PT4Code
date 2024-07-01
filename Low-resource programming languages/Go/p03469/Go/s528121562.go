package main

import (
  "fmt"
  "strings"
)

func main() {
  var s string
  fmt.Scanf("%s", &s)
  
  ans := strings.Replace(s, "2017", "2018", 1)
  fmt.Printf("%s\n", ans)
}