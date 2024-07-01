package main
import (
  "fmt"
)
func main() {
  var a, b, x int
  fmt.Scan(&a, &b, &x)
  var result string
  if 0 <= x-a && x-a <= b {
    result = "YES"
  } else {
    result = "NO"
  }
  fmt.Println(result)
}