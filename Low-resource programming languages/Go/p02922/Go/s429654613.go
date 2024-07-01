package main

import (
  "fmt"
)

func main() {
  var A, B int
  fmt.Scanf("%d %d", &A, &B)
  
  q := int(B / A)
  if B > q * A {
    q++
  }
  
  fmt.Println(q)
}