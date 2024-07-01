package main

import "fmt"

func main() {
  var N, K, count int
  fmt.Scan(&N,&K)
  A := make([]int,N)
  d := make([]int,K)
  Aj := make([]int,K)
  
  for i:=0; i<K; i++ {
    fmt.Scan(&d[i])
    for j:=0; j<d[i]; j++ {
      fmt.Scan(&Aj[j])
      A[Aj[j]-1] = 1
    }
  }
  for i:= range A {
    count += A[i]
  }
  fmt.Println(N-count)
}