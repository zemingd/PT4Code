package main

import "fmt"

func main() {
  var a, b int
  fmt.Scan(&a, &b)
  var count int
  for i := 0; i < 2; i++ {
    if a > b {
      count += a
      a--
    } else {
      count += b
      b--
    }
  }
  fmt.Println(count)
}