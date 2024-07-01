package main

import(
  "fmt"
)

func main() {
  var N, K int
  fmt.Scan(&N,&K)

  var min1, min2, min int

  min1 = N%K
  min2 = (min1-K) * -1
  if min1 <= min2 {
	min = min1
  }else {
	min = min2
  }
  fmt.Println(min)
}

