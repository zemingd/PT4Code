package main

import (
  "fmt"
)

func min(a, b int) int {
  if a < b {
    return a
  }
  return b
}

func main(){
  var P, Q, R int
  fmt.Scan(&P, &Q, &R)
  graph := [][]int{
    []int{0, P, R},
    []int{P, 0, Q},
    []int{R, Q, 0},
  }

  ans := 100+100+100
  for i := 0; i < 3; i++ {
    for j := 0; j < 3; j++ {
      if j == i {continue}
      for k := 0; k < 3; k++ {
        if k == i || k == j {continue}
        ans = min(ans, graph[i][j] + graph[j][k])
      }
    }
  }
  fmt.Printf("%d\n", ans)
}
