package main

import (
  "fmt"
  "math"
)

func main() {
  var a, b, c int64
  
  fmt.Scanf("%d %d %d\n", &a, &b, &c)
  
  if int64(math.Sqrt(float64(4*a*b)))+a+b < c {
    fmt.Println("Yes")
  }else{
    fmt.Println("No")
  }
}

