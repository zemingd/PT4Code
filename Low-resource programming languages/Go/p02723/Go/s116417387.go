package main

import (
  "fmt"
  "strings"
)

func main() {
  var input string
  fmt.Scan(&input)
  s := strings.Split(input, "")
  if s[2] == s[3] && s[4] == s[5] {
    fmt.Println("Yes")
  } else {
    fmt.Println("No")
  }
}