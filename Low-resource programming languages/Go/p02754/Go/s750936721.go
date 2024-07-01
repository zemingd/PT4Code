package main

import ”fmt”

func main() {
  var n, a, b int
  fmt.Scan(&n, &a, &b)
  
  fmt.Print(n%(a + b) * a + a)
}