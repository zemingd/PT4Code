package main

import "fmt"

func main(){
  var a, b int

  fmt.Scan(&a, &b)
  max := a+b
  if max < a-b {
    max = a-b
  }

  if max < a*b {
    max = a*b
  }

  fmt.Println(max)
}
