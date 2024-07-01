package main

import (
	"fmt"
)

func main() {
  var n string
  fmt.Scan(&n)

  var matched int
 
  p := make([]int, n)
  for i := range p {
    fmt.Scan(&p[i])
  }

  for i := 1; i +1 < n; i++ {
    if p[i + 1] > p[i] && p[i] < p[i - 1] {
      matched++
    }
  }
}