package main

import (
  "fmt"
)

var (
  A int
  B int
  C int
  D int
  E int
  F int
)

func makeX() map[int]int {
  ax := make(map[int]int)
  for i := 0; i <= F / (100 * A); i++ {
    for j := 0; j <= F / (100 * B); j++ {
      x := 100 * A * i + 100 * B * j
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

func makeY() map[int]int {
  ay := make(map[int]int)
  for i := 0; i <= F / C; i++ {
    for j := 0; j <= F / D; j++ {
      y := C * i + D * j
      if y > F {
        continue
      }
      if _, ok := ay[y]; !ok {
        ay[y] = 1
      }
    }
  }
  return ay
}

func main() {
  fmt.Scan(&A, &B, &C, &D, &E, &F)
  ax := makeX()
  ay := makeY()

  maxTotal := 0
  maxSugar := 0
  maxDense := float32(0.0)
  for x, _ := range ax {
    for y, _ := range ay {
      if x + y == 0 || x + y > F {
        continue
      }
      if float32(y) > float32(E * x) / float32(100) {
        continue
      }
      d := float32(100 * y) / float32(x + y)
      if maxDense < d {
        maxDense = d
        maxTotal = x + y
        maxSugar = y
      }
    }
  }
  fmt.Println(maxTotal, maxSugar)
}
