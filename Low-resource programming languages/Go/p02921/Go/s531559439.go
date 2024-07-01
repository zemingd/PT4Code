package main
import (
  "fmt"
)
func main() {
  var s, t string
  fmt.Scan(&s, &t)
  result := 0
  for i := 0; i < 3; i++ {
    if s[i] == t[i] {
      result++
    }
  }
  fmt.Println(result)
}