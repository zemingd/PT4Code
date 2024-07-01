package main

import (
  "fmt"
)

func main() {
  var A, B int
  fmt.Scanf("%d %d", &A, &B)
  
  q := B / A
  if (float64(B) / float64(A)) > 0 {
    q++
  }
  
  fmt.Println(q)
}