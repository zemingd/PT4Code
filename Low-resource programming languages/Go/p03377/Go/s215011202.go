package main
import (
  "fmt"
)
func main() {
  var a, b, x int
  fmt.Scan(&a, &b, &x)
  var result string
  if x-a <= b {
    result = "YES"
  } else {
    result = "NO"
  }
  fmt.Println(result)
}