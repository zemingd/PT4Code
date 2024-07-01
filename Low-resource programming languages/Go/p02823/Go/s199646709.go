package main

import (
  "fmt"
)

func foo(n, a, b int) int {
  ls := abs(a, b)
  if ls%2 == 0 {
    if ls <= n/2 {
      return ls/2
    } else {
      return (n-ls)/2
    }
  } else {
    var ka, kb int
    if n-a <= n/2 {
      ka = n-a
    } else {
      ka = a
    }
    if b-1 <= n/2 {
      kb = b-1
    } else {
      kb = n-b+1
    }
    if ka <= kb {
      return ka
    } else {
      return kb
    }
  }
}

func abs(n, a, b int) int {
  return (b-a)%n
}

func main() {
  var n, a, b int
  fmt.Scan(&n)
  fmt.Scan(&a)
  fmt.Scan(&b)
  fmt.Println(foo(n, a, b))
}
