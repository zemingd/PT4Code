package main

import (
  "fmt"
)

var (
  a,b,x,y int
)

func main() {
  fmt.Scanf("%d%d",&a,&b)
  if a > b {
    x = a
    a--
  } else {
    x = b
    b--
  }
  if a > b {
    y = a
    a--
  } else {
    y = b
    b--
  }
  fmt.Println(x + y)
}