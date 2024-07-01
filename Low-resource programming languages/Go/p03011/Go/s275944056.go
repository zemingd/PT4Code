package main

import (
  "fmt"
)

func main(){
  
  var P, Q, R int
  
  fmt.Scan(&P)
  fmt.Scan(&Q)
  fmt.Scan(&R)
  
  if(( P > Q) && ( P > R)){
    fmt.Print(Q + R)
  } else if (( Q > P) && (Q > R)){
    fmt.Print(P + R)
  } else if (( R > P) && (R > Q)){
    fmt.Print(Q + P)
  }
}