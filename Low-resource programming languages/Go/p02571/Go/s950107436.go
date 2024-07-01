package main

import "fmt"

func main() {
  var S, T string
  
  fmt.Scanf("%s\n%s", &S, &T)
  
  var maxLen = 0
  for i := 0; i <= len(S) - len(T); i++ {
    var cnt = 0
    for j := 0; j < len(T); j++ {
      if S[i + j] == T[j] {
        cnt++
      }
    }
    if cnt > maxLen {
      maxLen = cnt
    }
  }
  
  fmt.Println(len(T) - maxLen)
}