package main

import "fmt"

func main() {
  var A, B, N int
  
  fmt.Scanf("%d %d %d\n", &A, &B, &N)
  
  x := B - 1
  if x > N {
    x = N
  }
  
  fmt.Println( int(float64(A*x)/B)-A*int(float64(x)/B) )
}
