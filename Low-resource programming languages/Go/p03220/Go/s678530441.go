package main

import (
  "fmt"
)

func main() {
  var N, T, A int

  // N, T, Aを入力する
  fmt.Scanf("%d", &N)
  fmt.Scanf("%d %d", &T, &A)

  // Hを入力する
  var v float64
  H := make([]int, N)
  H1 := make([]float64, N)
  //H2 := make([]float64, N)
  for i := 0; i < N; i++ {
    fmt.Scanf("%d", &H[i])
  }

  // TODO: Nの数だけ計算する > 結果を格納
  for i := 0; i < N; i ++ {
    v = float64(T) - float64(H[i]) * 0.006
    H1[i] = v
    // TODO: 最後にAに近いところを出す
    H1[i] = float64(A) - H1[i]
  }
  min := H1[0]
  var key int
  for k, value := range H1 {
    if (value < min) {
      min = value
      key = k
    }
  }
  fmt.Println(key + 1)
}