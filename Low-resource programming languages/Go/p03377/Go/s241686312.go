package main

import "fmt"

func main() {
  var a, b, x int
  fmt.Scan(&a, &b, &x)
  if a > x {
    fmt.Println("NO")
  } else if (a + b) > x {
    fmt.Println("YES")
  } else {
    fmt.Println("NO")
  }
}