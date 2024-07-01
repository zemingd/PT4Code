package main

import "fmt"

func main() {
  var n, x, t int
  fmt.Scan(&n, &x, &t)
  var sum int
  if n % x == 0 {
    sum = n / x * t
  } else {
    sum = n / x * t + t
  }
  fmt.Println(sum)
}