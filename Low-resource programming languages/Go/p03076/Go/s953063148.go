package main

import (
  "fmt"
)

func main() {
  var p, sum, maxSurplus int
  for i := 0; i < 5; i++ {
    fmt.Scan(&p)
    sum += p
    if surplus := 10 - p%10; surplus != 10 {
      if maxSurplus < surplus {
        maxSurplus = surplus
      }
      sum += surplus
    }
  }
  fmt.Println(sum - maxSurplus)
}
