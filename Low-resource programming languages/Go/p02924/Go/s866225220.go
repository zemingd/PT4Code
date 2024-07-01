package main
import (
  "fmt"
)
func main() {
  var n int
  fmt.Scan(&n)
  result := (n*(n-1))/2
  fmt.Println(result)
}