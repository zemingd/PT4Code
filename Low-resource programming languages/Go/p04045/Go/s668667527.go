package main

import (
  "fmt"
)

func main() {
  var n, k int
  var e [10]bool
  d := make([]int, k)
  fmt.Scan(&n, &k)
  for i := range d {
    fmt.Scan(&d[i])
    e[d[i]] = true
  }
  var x []int
  for n > 0 {
    x = append(x, n % 10)
    n /= 10
  }
  p := len(x) - 1
  for p >= 0 {
    if e[p] {
      break
    }
    p--
  }
  if p >= 0 {
    for {
      c := false
      j := x[p]
      for {
        j++
        if j == 10 {
          j = 0
          c = true
        }
        if !e[j] {
          break
        }
      }
      x[p] = j
      if !c {
        break
      }
      p++
      if p == len(x) {
        if d[0] == 0 {
          x = append(x, d[1])
        } else {
	      x = append(x, d[0])
        }
        break
      }
    }
    for i := p - 1; i >= 0; i-- {
      x[i] = d[0]
    }
  }
  for i := len(x)-1; i >= 0; i-- {
    fmt.Print(x[i])
  }
}