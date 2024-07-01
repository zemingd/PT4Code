package main

import (
  "fmt"
)

func main() {
  var s string
  fmt.Scan(&s)

  for i, v := range s {
    if (i + 1) % 2 != 0 {
      fmt.Printf("%c", v)
    }
  }
}