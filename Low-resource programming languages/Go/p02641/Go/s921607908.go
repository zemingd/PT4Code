package main

import (
  "fmt"
)

func main() {
  var x, n, tmp, min, max int
  fmt.Scanf("%d %d", &x, &n)
  target := make([]int, n)

  if n == 0 {
    fmt.Println(x)
  } else {

    for i := 0; i < n; i++ {
      fmt.Scanf("%d", &tmp)
      target[i] = tmp
    }

    for j := x; j >= 0; j--{
      isMin := true
      for _, v := range target {
        if j == v {
          isMin = false
          break
        }
      }

      if isMin {
        min = j
        break
      }
    }

    for k := x; k <= 100; k++ {

      isMax := true
      for _, v1 := range target {
        if k == v1 {
          isMax = false
          break
        }
      }

      if isMax {
        max = k
        break
      }
    }

    if x - min > max - x {
      fmt.Println(max)
    } else {
      fmt.Println(min)
    }
  }
}
