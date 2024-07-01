package main

import "fmt"

var N, X, T int

func main() {
  fmt.Scanf("%d%d%d" &N, &X, &T)
  if N <= X {
    fmt.Println(T)
    return
  }
  res := 0
  for N > 0 {
  	N -= X
    res += T
  }
  fmt.Println(res)
}