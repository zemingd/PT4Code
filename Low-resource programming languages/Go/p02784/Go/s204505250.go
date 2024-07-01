package main

import (
  "fmt"
)


func foo(h, n int, a []int) string {
  min := 10000
  for _, i := range a {
    if i < min {
      min = i
    }
  }
  if min*n < h {
    return "No"
  } else {
    return "Yes"
  }
}

func main() {
  var h, n int
  var a []int
  fmt.Scan(&h, &n)
  fmt.Scan(&a)
  fmt.Println(foo(h, n, a))
}
