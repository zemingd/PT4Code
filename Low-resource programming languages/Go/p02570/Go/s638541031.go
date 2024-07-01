package main

import (
  "fmt"
)

func main(){
  var D int
  var T int
  var S int

  //fmt.Println(">>")

  fmt.Scan(&D)
  fmt.Scan(&T)
  fmt.Scan(&S)

  if D<=T*S {
    fmt.Println("Yes")
  }else{
    fmt.Println("No")
  }
}
