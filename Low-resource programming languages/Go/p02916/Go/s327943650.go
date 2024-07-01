package main

import (
  "fmt"
)

func main() {
  var N, sum  int
  fmt.Scan(&N)

  A := make([]int, N)
  B := make([]int, N)
  C := make([]int, N-1)
  for i := 0; i < N; i++ {
    fmt.Scan(&A[i])
  }
  for i := 0; i < N; i++ {
    fmt.Scan(&B[i])
    sum += B[i]
  }
  for i := 0; i < N-1; i++ {
    fmt.Scan(&C[i])
  }

  for i := 1; i < N; i++{
    if A[i - 1] + 1 == A[i] {
      sum += C[A[i - 1] - 1]
    }
  }
  fmt.Println(sum)

}
