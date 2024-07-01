package main

import (
  "fmt"
)

func main() {
  var n int
  fmt.Scan(&n)
  cards := make([]int, n)
  for i := 0; i < n; i++ {
    fmt.Scan(&cards[i])
  }
  var list []int
  for _, v := range cards {
    count := 0
    for _, w := range list {
      if v == w {
        count++
      }
    }
    if count == 0 {
      list = append(list, v)
    }
  }
  fmt.Println(len(list))
}