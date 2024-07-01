package main

import (
  "fmt"
)

func min(a, b int) int {
  if a < b {
    return a
  }
  return b
}

func main() {
  var n int
  var s string
  fmt.Scan(&n, &s)

  w := 0
  cnt := 0
  for i := n - 1; i >= 0; i-- {
    if s[i] == '#' {
      if cnt > 0 {
        w++
      }
      cnt = 0
    } else {
      cnt++
    }
  }
  fmt.Println(w)
}
