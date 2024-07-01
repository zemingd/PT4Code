package main
import (
  "fmt"
)
 
func main(){
  var k int
  var s string
  fmt.Scan(&k)
  fmt.Scan(&s)
  if len(s) <= k {
    fmt.Printf("%s\n", s)
  } else {
    fmt.Printf("%s\n", s[:k] + "...")
  }
}