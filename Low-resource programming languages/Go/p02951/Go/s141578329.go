package main

import (
  "fmt"
)

func main() {
  var a int
  var b int
  var c int
  
  fmt.Scan(&a, &b, &c)
  
  fmt.Println(c - (a-b))
}