package main
import (
  "fmt"
  "strconv"
)
func main() {
  var s,t string
  var k,n int
  fmt.Scan(&s)
  fmt.Scan(&t)
  if len(t) <= 3 {
    k,_ = strconv.Atoi(t)
  } else {
    k = 101
  }
  n = 1
  for i:=0;i<k;i++ {
    if i > len(s) { break }
    if s[i:i+1] != "1" {
      n,_ = strconv.Atoi(s[i:i+1])
      break
    }
  }
  fmt.Println(n)
}