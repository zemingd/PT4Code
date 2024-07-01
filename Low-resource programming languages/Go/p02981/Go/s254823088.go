package main

import "fmt"

func main(){
  var N int
  var A int
  var B int
  
  fmt.Scan(&N)
  fmt.Scan(&A)
  fmt.Scan(&B)
  
  if (A*N <= B){
    fmt.Print(A*N)
  }else{
    fmt.Print(B)
  }
}