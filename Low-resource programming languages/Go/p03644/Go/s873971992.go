package main

import (
  "fmt"
)

func main() {
  var n int
  fmt.Scan(&n)
  
  i := 1
  var result int
  for i <= n {
    result = i
    i *= 2
  }
  fmt.Println(result)
}