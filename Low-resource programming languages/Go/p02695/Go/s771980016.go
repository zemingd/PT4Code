package main

import "fmt"

func main() {
  var N, M, Q int
  
  fmt.Scanf("%d %d %d\n", &N, &M, &Q)
  a := make([]int, Q)
  b := make([]int, Q)
  c := make([]int, Q)
  d := make([]int, Q)
  for i := 0 ; i < Q; i++ {
    fmt.Scanf("%d %d %d %d\n",  &a[i], &b[i], &c[i], &d[i])
  }
  A := make([]int, N)
  for i := 0; i < N; i++ {
    A[i] = 1
  }
  
  mx := 0
  for {
    tmp := 0
    for i := 0; i < Q; i++ {
      if A[b[i]-1] - A[a[i]-1] == c[i] {
        tmp += d[i]
      }
    }
    if tmp > mx {
      mx = tmp
    }
    
    A[N-1]++
      for i := 0; i < N; i++ {
        if A[N-i-1] / (M+1) == 0 {
          break
        }
        A[N-i-1] = 0
        if i == N-1 {
          fmt.Println(mx)
          return
        }
        A[N-i-2]++
      }
    for i := 1; i < N; i++ {
      if A[i] == 0 {
        A[i] = A[i-1]
      }
    }
  }
}