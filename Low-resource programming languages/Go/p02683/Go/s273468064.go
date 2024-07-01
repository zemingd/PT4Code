package main

import "fmt"


func main() {
  // 入力
  var N, M, X int
  fmt.Scanf("%d %d %d", &N, &M, &X)
  A := make([][]int, N)
  C := make([]int, N)
  for i := 0; i < N; i++ {
    fmt.Scanf("%d", &C[i])
    A[i] = make([]int, M)
    for j := 0; j < M; j++ {
      fmt.Scanf("%d", &A[i][j])
    }
  }
  
  // 計算
  sum := make([]int, M)
  fmt.Println(rec(A, C, X, sum, 0))
}

func rec(A [][]int, C []int, X int, sum []int, bgn int) int {
  if bgn == len(C) {
    return -1
  }
  
  f := 1
  for i := 0; i < len(A[bgn]); i++ {// 現在を含んでクリアできるかチェック
    if sum[i] + A[bgn][i] < X {
      f = 0
    }
  }
  if f == 1 { // クリアしてたらリターン
    return C[bgn]
  }
  
  // 自身を含まず、自分以降を加えてクリアできるか
  // 自身を含み、自分以降も加えてクリアできるか
  // クリアしてるほうを返す。両方ならコスト小さいほう。クリアしてなければ-1
  cost1 := rec(A, C, X, sum, bgn+1)
  for i := 0; i < len(A[bgn]); i++ {
    sum[i] += A[bgn][i]
  }
  cost2 := rec(A, C, X, sum, bgn+1)
  if cost2 != -1 {
    cost2 += C[bgn]
  }
  
  if cost1 == -1 {
    return cost2
  }
  if cost2 == -1 {
    return cost1
  }
  
  if cost1 < cost2 {
    return cost1
  }
  return cost2
}