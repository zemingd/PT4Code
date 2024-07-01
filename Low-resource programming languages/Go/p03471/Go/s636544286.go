package main

import (
  "fmt"
)

func main() {
  var n, y int
  fmt.Scan(&n, &y)
  for i := 0; i <= n; i++ {
    for j := 0; j <= n - i; j++ {
      rem := y - 10000 * i - 5000 * j
      k := rem / 1000
      if k == n - i - j {
        fmt.Printf("%d %d %d\n", i, j, k)
        return
      }
    }
  }
  fmt.Printf("-1 -1 -1\n")
}
