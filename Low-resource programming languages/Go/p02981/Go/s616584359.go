package main

import "fmt"

func main(){
  var N int
  var A int
  var B int
  
  fmt.Scan(&N)
  fmt.Scan(&A)
  fmt.Scan(&B)
  
  if (A <= B*N){
    fmt.Print(A)
  }else{
    fmt.Print(B*N)
  }
}