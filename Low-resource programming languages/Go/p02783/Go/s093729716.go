package main

import (
  "fmt"
  "math"
)


func foo(n, a int) int {
  if a >= n {
    return 1
  } else {
    v := float64(n) / float64(a)
    return int(math.Ceil(v))
  }
}

func main() {
  var n, a int
  fmt.Scan(&n)
  fmt.Scan(&a)
  fmt.Println(foo(n, a))
}
