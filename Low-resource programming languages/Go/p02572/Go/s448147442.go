package main

import "fmt"

func main() {
  var N int
  fmt.Scanf("%d\n", &N)
  A := make([]int, N)
  for i := 0; i < N; i++ {
    fmt.Scanf("%d", &A[i])
  }
  
  B := make([]int, N)
  B[N-1] = 0
  for i := N-2; i >= 0; i-- {
    B[i] = (B[i+1] + A[i+1]) % (1e9+7)
  }
  
  var ret int = 0
  for i := 0; i < N; i++ {
    ret = (ret + A[i] * B[i]) % (1e9+7)
  }
  fmt.Println(ret)
}