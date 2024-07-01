package main

import (
  "fmt"
)

func main() {
  var k,x   int
  fmt.Scan(&k,&x)
  minx := x -k + 1
  maxx := x + k - 1
  for i := minx;i<=maxx;i++ {
    fmt.Print(i," ")
  }
}