package main

import (
  "fmt"
)

func main() {
  var a, b int
  var i, j int
  
  fmt.Scanf("%d %d", &a, &b)

  max := a + b
  i = a - b
  j = a * b
  
  if(max < i) {
    max = i
  }
  
  if(max < j) {
    max = j
  }
  
  fmt.Println(max)
}