package main

import "fmt"

func main() {
  var n int
  fmt.Scan(&n)
  h := make([]int, n)
  for i := 0; i < n; i++ {
    fmt.Scan(&h[i])
  }
  count := 0
  max := h[0]
  for _, v := range h {
    if v >= max {
      max = v
      count++
    }
  }
  fmt.Println(count)
}