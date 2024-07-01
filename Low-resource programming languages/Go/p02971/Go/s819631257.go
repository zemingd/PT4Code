package main

import (
  "fmt"
)

func main(){
  
  var N int
  var A [200000] int
  var max_num int
  var max_num2 int
  fmt.Scan(&N)
  max_num = 0
  max_num2 = 0
  
  for i := 0; i < N; i++ {
    fmt.Scan(&A[i])
    if (A[i] > max_num){
      max_num2 = max_num
      max_num = A[i]
    }
    if (A[i] > max_num2 && A[i] < max_num){
      max_num2 = A[i]
    }
  }
  for i := 0; i < N; i++ {
    if (max_num == A[i]){
      fmt.Println(max_num2)
    }else{
      fmt.Println(max_num)
    }
  }
}