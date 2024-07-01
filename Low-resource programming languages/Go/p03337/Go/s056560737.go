package main 

import (
  "fmt"
)

func main() {
  var a, b int
  fmt.Scanln(&a, &b)
  max := a + b
  if a * b >= max {
    max = a * b 
  }
  if a - b >= max {
    max = a - b
  }
  fmt.Println(max)
}
    
    