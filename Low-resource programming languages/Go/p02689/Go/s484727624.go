package main

import "fmt"

func main() {
  var N, M int
  fmt.Scanf("%d %d\n", &N, &M)
  H := make([]int, N)
  good := make([]int, N)
  for i := 0; i < N; i++ {
    fmt.Scanf("%d", &H[i])
    good[i] = 1
  }
  
  for i := 0; i < M; i++ {
    var a, b int
    fmt.Scanf("%d %d\n", &a, &b)
    if H[a-1] <= H[b-1] {
      good[a-1] = 0
    }
    if H[a-1] >= H[b-1] {
      good[b-1] = 0
    }
  }
  
  cnt := 0
  for i := 0; i < N; i++ {
    if H[i] == 1 {
      cnt++
    }
  }
  fmt.Println(cnt)
}