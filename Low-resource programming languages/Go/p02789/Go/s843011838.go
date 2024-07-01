package main

import "fmt"

func main() {
  var N, M int
  fmt.Scan(&N, &M)
  if N > M {
    fmt.Println("No")
  } else {
    fmt.Println("Yes")
  }
}