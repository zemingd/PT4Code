package main

import (
    "fmt"
)

func main() {
  var a, b int
  fmt.Scan(&a)
  fmt.Scan(&b)
  for i := 0; i < a + 1; i++ {
    if 4 * i + (2 * (a - i)) == b {
      fmt.Print("Yes")
      return
    }
  }
  fmt.Print("No")
}