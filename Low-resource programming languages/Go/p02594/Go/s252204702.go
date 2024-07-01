package main

import "fmt"

func main() {
  var X int
  fmt.Scan(&X)
  
  if 30 <= X {
    fmt.Println("Yes")
  } else {
    fmt.Println("No")
  }
}