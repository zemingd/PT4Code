package main

import (
  "fmt"
)

func makeX(a, b, F int) map[int]int {
  ax := make(map[int]int)
  for i := 0; i <= F / a; i++ {
    for j := 0; j <= F / b; j++ {
      x := a * i + b * j
      if x > F {
        continue
      }
      if _, ok := ax[x]; !ok {
        ax[x] = 1
      }
    }
  }
  return ax
}

func main() {
  var A, B, C, D, E, F int
  fmt.Scan(&A, &B, &C, &D, &E, &F)
  ax := makeX(100 * A, 100 * B, F)
  ay := makeX(C, D, F)

  maxTotal := 0
  maxSugar := 0
  for x, _ := range ax {
    for y, _ := range ay {
      if x + y == 0 || x + y > F {
        continue
      }
      if 100 * y > E * x {
        continue
      }
      total := x + y
      if maxTotal == 0 {
        maxTotal = total
        maxSugar = y
        continue
      }
      if 100 * maxSugar * total < 100 * y * maxTotal {
        maxTotal = total
        maxSugar = y
      }
    }
  }
  fmt.Println(maxTotal, maxSugar)
}
