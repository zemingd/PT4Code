package main

import (
  "fmt"
)

func main() {
  var n int
  fmt.Scan(&n)
  m := make(map[int]int)
  var d int
  for i := 0; i < n; i++ {
    fmt.Scan(&d)
    m[d]++
  }

  ans := 0
  for i := 1; i <= 100; i++ {
    if m[i] > 0 {
      ans++
    }
  }
  fmt.Println(ans)
}
