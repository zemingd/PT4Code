package main

import (
    "fmt"
)

func main() {
    var (
        n     int
    )
    fmt.Scan(&n)
    v := make([]int, n)
    for i := 0; i < n; i++ {
      fmt.Scan(&v[i])
      }
    c := make([]int, n)
    for i := 0; i < n; i++ {
      fmt.Scan(&c[i])
      }
    cost := make([]int, n)
    var ans int
    for i := 0; i < n; i++ {
      cost[i] = v[i] - c[i]
      if (cost[i] > 0){
        ans = ans + cost[i]
      }
    }
    fmt.Println(ans)
}