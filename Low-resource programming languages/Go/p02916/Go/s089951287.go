package main
import (
  "fmt"
)
func main() {
  var N int
  fmt.Scan(&N)
  A := make([]int, N)
  B := make([]int, N)
  C := make([]int, N-1)
  for i, _ := range A {
    fmt.Scan(&A[i])
  }
  for i, _ := range B {
    fmt.Scan(&B[i])
  }
  for i, _ := range C {
    fmt.Scan(&C[i])
  }
  
  res := 0
  for _, v := range B {
    res += v
  }
  for i, _ := range C {
    if A[i] + 1 == A[i+1] {
      res += C[A[i]-1]
    }
  }
  fmt.Println(res)
}
