package main

import "fmt"

func main() {
  var N int
  fmt.Scan(&N)
  
  for i:=0; i <= N/4; i++ {
    for j:=0; j <= N/7; j++ {
      if N == 4 * i + 7 * j {
        fmt.Println("Yes")
        return
      }
    }
  }
  fmt.Println("No")
}