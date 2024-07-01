package main

import (
  "fmt"
)

func foo(n, a, b int) int {
  ls := b - a
  if ls%2 == 0 {
    return ls/2
  } else {
    return Min(Min(a+foo(n, 1, b-a), b-1), Min(n-a, n-b+1+foo(n,a+n-b+1,n)))
  }
}

func Min(a, b int) int {
  if a < b {
    return a
  } else {
    return b
  }
}

func main() {
  var n, a, b int
  fmt.Scan(&n)
  fmt.Scan(&a)
  fmt.Scan(&b)
  fmt.Println(foo(n, a, b))
}
