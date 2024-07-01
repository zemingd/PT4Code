package main

import (
    "fmt"
)

func main() {
    var length int
    var S,T string
  
    fmt.Scan(&length)
    fmt.Scan(&S)
    fmt.Scan(&T)
  
    for i := 0; i < length; i++ {
      fmt.Print(string(S[i])+string(T[i]));
    }
}