package main

import (
  "fmt"
  "sort"
)

func main() {
  var N,K,a,b int
  fmt.Scan(&N)
  fmt.Scan(&K)
  num := make([]int, N)
  count := make(map[int]int, N)
  for i := 0; i < N; i++ {
    fmt.Scan(&a)
    fmt.Scan(&b)
    num[i] = a
    count[a] += b
  }
  sort.Ints(num)
  order := 0
  var answer, previous int
  for _, v := range num {
    if previous != v {
      order += count[v]
      if order >= K {
        answer = v
        break
      }
    }
  }
  fmt.Println(answer)
}