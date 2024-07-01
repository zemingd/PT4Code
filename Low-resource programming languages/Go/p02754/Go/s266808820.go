package main

import "fmt"

func main() {
  var N, A, B int
  fmt.Scan(&N, &A, &B)
  
  lenAB := len(A) + len(B)
  n := N/lenAB
  rest := n%lenAB
  
  ans := n*len(A)
  if rest <= len(A) {
    ans =++ len(A)
  } else {
    ans =++ rest
  }
  fmt.Println(ans)
}
  