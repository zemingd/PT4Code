package main

import (
  "fmt"
)

func main() {
  var output = "No"
  var n int
  fmt.Scan(&n)

  for i := 1; i < 10; i++ {
    for j := 1; j < 10; j++ {
      if n == i*j {
        output = "Yes"
        break
      }
    }
  }
  
  fmt.Println(output)
}