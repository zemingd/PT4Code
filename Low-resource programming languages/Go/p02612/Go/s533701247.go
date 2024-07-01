package main

import (
  "fmt"
)

func main() {
  var n int
  fmt.Scan(&n)
  
  var i int = n / 1000
  change := 1000 * (i + 1) - n
  fmt.Println(change)
}