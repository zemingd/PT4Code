package main

import "fmt"

func main() {
  var a int
  _, err := fmt.Scanf("%d", &a)
  if err != nil {
    panic("error")
  }
  b := a % 1000
  if b == 0 {
    fmt.Println("0")
  } else {
    fmt.Println(1000 - b)
  }
}