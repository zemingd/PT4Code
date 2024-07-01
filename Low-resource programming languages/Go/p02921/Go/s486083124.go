package main

import (
  "fmt"
)

func main() {
  var S, T string
  fmt.Scanf("%s", &S)
  fmt.Scanf("%s", &T)
  
  var cnt int
  for i := 0; i < 3; i++ {
    if S[i] == T[i] {
      cnt++
    }
  }
  
  fmt.Println(cnt)
}