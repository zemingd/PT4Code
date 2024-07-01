package main

import (
  "fmt"
  "math"
)

func main() {
  var N int
  var T, A float64

  // N, T, Aを入力する
  fmt.Scan(&N, &T, &A)

  // Hを入力する
  H := make([]float64, N)
  for i, _ := range H {
    fmt.Scan(&H[i])
  }

  // TODO: Nの数だけ計算する > 結果を格納
  min := float64(10000)
  ans := 0
  for i, h := range H {
    diff := math.Abs(A - (T - h * 0.006))
    if diff < min {
      min = diff
      ans = i
    }
  }
  fmt.Println(ans + 1)
}