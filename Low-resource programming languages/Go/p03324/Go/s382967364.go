package main

import (
  "fmt"
  "math"
) 

func main() {
  var d, n float64
  fmt.Scan(&d, &n)
  
  if n==100{
    n++
  }
  fmt.Println(math.Pow(100, d) * n)
}