package main

import (
  "fmt"
)
func Reverse(s string) string {
  runes := []rune(s)
  for i, j := 0, len(runes)-1; i < j; i, j = i+1, j-1 {
    runes[i], runes[j] = runes[j], runes[i]
  }
  return string(runes)
}
func main() {
  var s, t string
  fmt.Scan(&s)
  fmt.Scan(&t)

  s1 := Reverse(s)
  t1 := Reverse(t)

  if s1 < t1 {
    fmt.Println("Yes")
  } else {
    fmt.Println("No")
  }
}
