package main

import (
  "fmt"
  "strings"
)

func Reverse(s string) (result string) {
  for _, v := range s {
    result = string(v) + result
  }
  return
}

func main() {
  var s string
  fmt.Scanln(&s)

  fmt.Println((len(s) - strings.Index(Reverse(s), "Z")) - strings.Index(s, "A"))

}