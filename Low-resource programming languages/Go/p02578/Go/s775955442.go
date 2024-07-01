package main

import "fmt"

var N int
var A []int

func main() {
  fmt.Scanf("%d", &N)
  for i:=0; i<N; i++ {
    fmt.Scanf("%d", &A[i])
  } 
  res := 0 
  for i:=1; i<N; i++ {
    if A[i] < A[i-1] {
    	res += A[i-1] - A[i]
      	A[i] = A[i-1]
    }
  }
  fmt.Println(res)
}