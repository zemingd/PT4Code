package main

import (
  "fmt"
)

var S, T string

func main() {
  fmt.Scan(&S, &T)
  if S != T {
    fmt.Println("Yes")
  }else {
    fmt.Println("No")
  }
}