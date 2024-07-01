package main

import "fmt"

func main(){
  var K int
  var S string
  
  fmt.Scanf("%d\n%s", &K, &S)
  if len(S) <= K {
    fmt.Println(S)
    return
  }
  fmt.Println(S[0:K] + "...")
}