package main
import "fmt"

func main() {
  var a, b int
  
  fmt.Scan(&a, &b)
  if b % a == 0 {
      fmt.Print(a + b)
  } else {
      fmt.Print(b - a)
  }
}