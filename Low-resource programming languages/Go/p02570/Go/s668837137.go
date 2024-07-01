package main

import (
  "fmt"
)

func main(){
  var D int
  var T int
  var S int

  fmt.Scan(&D)
  fmt.Scan(&T)
  fmt.Scan(&S)

  if T>=D/S {
    fmt.Println("Yes")
  }else{
    fmt.Println("No")
  }


}
