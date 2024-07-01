package main

import "fmt"

func main() {
  var N, ans int
  var S string
  fmt.Scan(&N, &S)
  for i := 0; i < N-1; i++{
    if S[i] != S[i+1] {
      ans++
    }
  }
  fmt.Println(ans+1)
}
