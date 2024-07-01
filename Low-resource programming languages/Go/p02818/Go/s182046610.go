package main

import "fmt"

func main() {
  var a, b, k int
  fmt.Scan(&a, &b, &k)

  if k >= a {
    temp := k - a
    a = 0
    if temp >= b {
      b = 0
    } else {
      b = b - temp
    }
  } else {
    a = a - k
  }

  fmt.Printf("%d %d", a, b)

}