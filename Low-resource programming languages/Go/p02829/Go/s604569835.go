package main

import "fmt"

func main() {
  var a, b int
  fmt.Scan(&a)
  fmt.Scan(&b)
  if a == 1 {
    if b == 2 {
      fmt.Println(3)
    }
    if b == 3 {
      fmt.Println(2)
    }
  }
  if a == 2 {
    if b == 1 {
      fmt.Println(3)
    }
    if b == 3 {
      fmt.Println(1)
    }
  }
  if a == 3 {
    if b == 1 {
      fmt.Println(2)
    }
    if b == 2 {
      fmt.Println(1)
    }
  }
}