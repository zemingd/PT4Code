package main

import (
  "fmt"
  "sort"
)

func main() {
  var n, m int
  fmt.Scan(&n, &m)
  shops := make([][]int, n)
  for i := 0; i < n; i++ {
    shops[i] = make([]int, 2)
    fmt.Scan(&shops[i][0], &shops[i][1])
  }
  sort.Slice(shops, func(i, j int) bool {
    return shops[i][0] < shops[j][0]
  })
  finished := false
  price := 0
  for _, v := range shops {
    get := v[1]
    if get > m {
      get = m
      finished = true
    }
    price += get * v[0]
    m -= get
    if finished {
      break
    }
  }
  fmt.Println(price)
}