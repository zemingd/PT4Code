package main

import "fmt"

func main() {
  var N int
  fmt.Scan(&N)
  for i := 1; i < 10; i++{
    if N % i == 0{
      fmt.Println("Yes")
      return
    }
  }
  fmt.Println("No")
}