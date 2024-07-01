package main

import (
  "fmt"
)

func main() {
  var (
    n,a,b int
  )
  fmt.Scan(&n)
  fmt.Scan(&a)
  fmt.Scan(&b)

  fmt.Println(check(n,a,b))
}

func check(n,a,b int) int {
  if a==0 {
    return 0
  } else {
    x := n-a-b
    return x+a
  }
}
