package main

import (
  "fmt"
)

func main() {
  var s string
  fmt.Scan(&s)
  ans := 0
  for _, c := range s {
    if c == '1' {
      ans += 1
    }
  }
  fmt.Println(ans)
}
