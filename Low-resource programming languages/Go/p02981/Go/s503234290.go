package main

import (
  "fmt"
  _ "sort"
  _ "math"
)

func main() {
  var n,a,b int
  fmt.Scan(&n,&a,&b)

  r := b

  if r > a*n {
    r = a * n
  }

  fmt.Printf("%d\n", r)
}
