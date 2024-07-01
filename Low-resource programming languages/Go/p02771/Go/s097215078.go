package main

import (
    "fmt"
)

func main() {
  var a, b, c, poorflag int
  fmt.Scanf("%d %d %d", &a, &b, &c)
  if a == b && a != c {poorflag = 1}
  if b == c && b != a {poorflag = 1}
  if c == a && c != b {poorflag = 1}
  
  if poorflag {
    fmt.Println("Yes")
  }else {
    fmt.Println("No")
  }
}