package main

import (
  "fmt"
)

func main() {
  var a, b, c, k int
  fmt.Scan(&a, &b, &c, &k)

  var res int
  //res = a
  res += (1 - 0) * a
  k -= a
  k -= b

  //if k > 0 {
  if k <= c {
    res += (1 - 2) * k
    //res -= k
  }
  fmt.Println(res)

}
