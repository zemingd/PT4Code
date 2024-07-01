package main

import "fmt"

func main() {
  var a, b, x int
  fmt.Scan(&a, &b, &x)
  if a > x {
    fmt.Println("No")
  } else if (a + b) > x {
    fmt.Println("Yes")
  } else {
    fmt.Println("No")
  }
}