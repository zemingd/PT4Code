package main
import (
  "fmt"
)

func main(){
  var N int
  fmt.Scan(&N)
  A := make([]int, N)
  for i:= 0; i<N; i++{
    fmt.Scan(&A[i])
  }
  // fmt.Println(A)
  result := 0
  for i:=0; i<N; i++{
    for j:=0; j<N; j++{
      ai := A[i]
      aj := A[j]
      xor := ai^aj
      result += xor
    }
  }
  large_num := 10000000007
  fmt.Println(int(result/2)%large_num)
}
