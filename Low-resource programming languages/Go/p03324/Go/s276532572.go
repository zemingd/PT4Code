package main

import (
  "fmt"
)

func main() {
  var a, b int
  fmt.Scan(&a, &b)
  if a == 0 {
    if b == 100 {
      fmt.Println(b+1)
    } else {
      fmt.Println(b)
    }
  } else if a == 1 {
    res := 100 * b
    if b == 100 {
      fmt.Println(res+100)
    } else {
      fmt.Println(res)
    }
  } else {
    res := 100 * 100 * b
    if b == 100 {
      fmt.Println(res+10000)
    } else {
      fmt.Println(res)
    }
  }
}