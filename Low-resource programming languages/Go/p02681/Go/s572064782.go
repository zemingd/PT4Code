package main

import (
  "fmt"
)

var S, T string

func main() {
  fmt.Scan(&S, &T)
  if S != T {
    fmt.Println("YES")
  }else {
    fmt.Println("NO")
  }
}