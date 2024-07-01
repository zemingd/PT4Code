package main

import "fmt"

func main(){
  var N int
  var K int
  var X int
  var Y int
  var sum int = 0
  fmt.Scan(&N)
  fmt.Scan(&K)
  fmt.Scan(&X)
  fmt.Scan(&Y)
  
  if N <= K {
    sum = X * N
  } else if N > K {
    sum = X * N + Y * (N-K)
  }
  fmt.Println(sum)
}
