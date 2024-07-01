package main

import (
  "fmt"
)

func main() {

  var r, d, x int

  fmt.Scan(&r, &d, &x)

  c:=x
  for i:=1; i<=10; i++ {
    c = r*c - d
      fmt.Println(c)
  }
}