package main

import "fmt"

func main() {
  var a, b int
  fmt.Scanf("%d %d", &a, &b)

  if b % a == 0 {
    fmt.Println(a+b)
    return
  }

  fmt.Println(b-a)
}