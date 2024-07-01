package main

import (
  "fmt"
  // "math"
  // "os"
)

var N,L int
// var taste[]

func abs(a int)int {
  if a < 0{
    return -a
  }
  return a
}

func main(){
  fmt.Scan(&N, &L)
  // fmt.Scan(&L)

  sum := 0
  min_apple := 1000000007
  for i := 1; i < N+1; i++ {
    sum += L + i - 1
    if abs(min_apple) > abs(L+i-1){
      min_apple = L+i-1
    }
  }

  fmt.Println(sum-min_apple)

 }
