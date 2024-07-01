package main
import (
  "fmt"
)

func max(a, b int) int {
  if a < b {
    return b
  }
  return a
}

func main() {
  var a, b int
  fmt.Scan(&a, &b)
  sum := a+b
  dif := a-b
  num := max(sum, dif)
  prod := a*b
  result := max(num, prod)
  fmt.Println(result)
  
}