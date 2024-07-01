package main

import (
  "fmt"
)

func main() {
  var a, b, c, k int
  fmt.Scan(&a, &b, &c, &k)

  var res int
  res += a
  k -= a
  if k > 0 {
    k -= b
  }

  if k > 0 {
    res -= k
  }
  if res < 0 {
    res = 0
  }
  fmt.Println(res)

}
