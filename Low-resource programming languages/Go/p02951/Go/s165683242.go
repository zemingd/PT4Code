package main

import (
  "fmt"
)

func main() {
  var a int
  var b int
  var c int
  
  fmt.Scan(&a, &b, &c)
  
  if c >= a-b {
	fmt.Println(c - (a-b))
  } else {
      fmt.Println(0)
  }
}