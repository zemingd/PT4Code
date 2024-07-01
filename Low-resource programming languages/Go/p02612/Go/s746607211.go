package main

import "fmt"

func main() {
  var n int
  fmt.Scan(&n)
  result := (10000-n) % 1000
  fmt.Println(result)
}

