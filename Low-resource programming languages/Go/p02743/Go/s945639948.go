package main

import (
  "fmt"
  "math"
)

func main() {
  var a, b, c int64
  
  fmt.Scanf("%d %d %d\n", &a, &b, &c)
  
  if math.Sqrt(float64(a)) + math.Sqrt(float64(b)) < math.Sqrt(float64(c)) {
    fmt.Println("Yes")
  }else{
    fmt.Println("No")
  }
}

