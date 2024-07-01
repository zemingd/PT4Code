package main

import (
  "fmt"
)

func main() {
  var S string
  fmt.Scan(&S)

  var z, o int
  for i := 0; i < len(S); i++ {
    if S[i] == '0' {
      z++
    } else {
      o++
    }
  }
  if z > o {
    fmt.Println(o * 2)
  } else {
    fmt.Println(z * 2)
  }
}