package main

import "fmt"

func main() {
  var S, T string
  fmt.Scan(&S, &T)
  
  for i := range S {
    if S[i:]+S[:i] == T {
      fmt.Println("Yes")
      break
    }
    if i == len(S)-1 {
      fmt.Println("No")
    }
  }
}