package main

import "fmt"

func main() {
  var X, Y int
  fmt.Scanf("%d %d", &X, &Y)
  
  if Y%2 == 1 {
    fmt.Println("No")
    return
  }
  
  if Y < X*2 {
    fmt.Println("No")
    return
  }
  
  if X*4 < Y {
    fmt.Println("No")
    return
  }
  
  fmt.Println("Yes")
}