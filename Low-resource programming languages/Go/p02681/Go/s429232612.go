package main

import "fmt"


func main() {
  var S, T string
  fmt.Scanf("%s\n%s", &S, &T)
  
  if S[0:len(S)] != T[0:len(T)-1] {
    fmt.Println("No")
    return
  }
  fmt.Println("Yes")
}