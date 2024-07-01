package main

import (
  "fmt"
)
  
func main() {
  var N, M int
  fmt.Scanf("%d %d\n", &N, &M)
 
  var sum int = 0
  for i := 0; i < M; i++ {
    var c int
    fmt.Scanf("%d", &c)
    sum += c
  }
  if sum > N {
    fmt.Println(-1)
    return
  }
  fmt.Println(N - sum)
}