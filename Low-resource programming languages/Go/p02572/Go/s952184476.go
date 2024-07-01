package main

import "fmt"

func main() {
  var N int
  fmt.Scanf("%d\n", &N)
  A := make([]int, N)
  for i := 0; i < N; i++ {
    fmt.Scanf("%d", &A[i])
  }
  
  var ret int = 0
  for i := 0; i < N; i++ {
    for j := i+1; j < N; j++ {
      ret = (ret + A[i] * A[j]) % (10e9+7)
    }
  }
  fmt.Println(ret)
}