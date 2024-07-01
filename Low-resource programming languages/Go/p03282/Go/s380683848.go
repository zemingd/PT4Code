package main
import (
  "fmt"
)
func main() {
  var s string
  fmt.Scan(&s)
  var k int64
  fmt.Scan(&k)
  result := "1"
  for i := int64(0); i < k; i++ {
    if int64(len(s)) <= i {
      break
    }
    if s[i] != '1' {
      result = string(s[i])
      break
    }
  }
  fmt.Println(result)
}