package main

import "fmt"

func main(){
  var N int
  fmt.Scan(&N)
  fee := 0
  diff := make([]int, N+1)
  A := make([]int, N)
  for i:=0;i<N;i++{
    fmt.Scan(&A[i])
    if i == 0{
      fee += abs(A[i])
      diff[i] = A[i]
    }else{
      fee += abs(A[i] - A[i-1])
      diff[i] = A[i]-A[i-1]
    }
  }
  fee += abs(A[N-1])
  diff[N] = 0 - A[N-1]
  // fmt.Println(fee)
  // fmt.Println(diff)

  for i:=0;i<N;i++{
    fmt.Println(fee-abs(diff[i])-abs(diff[i+1])+abs(diff[i]+diff[i+1]))
  }

}

func abs(i int) int{
  if i>=0{
    return i
  }else{
    return -i
  }
}
