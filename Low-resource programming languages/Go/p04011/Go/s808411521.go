package main

import (
  "fmt"
)

func min(x, y int) int {
  if x > y {
    return y
  }
  return x
}

func main(){
  var n,k,x,y int
  fmt.Scan(&n, &k, &x, &y)

  if min(n,k) == n {
    fmt.Println(n * x)
  } else {
    fmt.Println(k * x + (n-k) * y)
  }
}