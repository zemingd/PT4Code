package main

import (
  "fmt"
) 

func main() {
  var d, n int
  fmt.Scan(&d, &n)
  
  result := 1
  for i := 0; i < d; i++ {
    result *= 100
  }
  if n==100{
    n++
  }
  fmt.Println(result * n)
}