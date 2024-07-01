package main

import (
  "fmt"
)

func main(){
  var a,b,c int64

  fmt.Scan(&a, &b, &c)
  if a%c != 0 {
    a += c - a % c
  }
  if b%c != 0 {
    b -= b % c
  }

  if a > b {
    fmt.Println(0)
  } else {
    fmt.Println((b-a)/c+1)
  }
}