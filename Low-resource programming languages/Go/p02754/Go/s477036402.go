package main

import "fmt"

func main() {
  var N, A, B int
  fmt.Scan(&N, &A, &B)
  
  lenAB := A + B
  n := N/lenAB
  rest := N%lenAB

  ans := n*A
  if rest <= A {
    ans += rest
  } else {
    ans += A
  }
  fmt.Println(ans)
}
  