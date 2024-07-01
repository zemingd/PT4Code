package main

import (
  "fmt"
)

func main() {
  var A, B int
  fmt.Scanf("%d %d", &A, &B)
  
  a := A - 1
  
  q := B / a
  if (B - (a * q)) > 1 {
    q++
  }
  
  fmt.Println(q)
}