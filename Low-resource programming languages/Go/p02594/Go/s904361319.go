package main

import (
  "fmt"
)

func main() {
  var x int
  fmt.Scanf("%d", &x)
  
  if x >= 30 {
    fmt.Printf("Yes\n")
  } else {
    fmt.Printf("No\n")
  }
}
