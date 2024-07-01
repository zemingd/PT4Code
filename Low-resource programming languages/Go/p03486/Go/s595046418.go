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

  s1_byte := []byte(s1)
  t1_byte := []byte(t1)
  tag := true

  for i := 0; i < len(t1_byte); i++ {
    if s1_byte[i] < t1_byte[i] {
      tag = true
    } else {
      tag = false
      goto exit
    }
  }
  exit:
    if tag == true {
      fmt.Println("OK")
    } else {
      fmt.Println("No")
    }
}