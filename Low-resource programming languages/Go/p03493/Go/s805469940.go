package main
 
import (
    "fmt"
)
 
func main() {
  var s string
  fmt.Scan(&s)
  c := 0
  if s[:1] == "1" {
    c += 1
  }
  if s[1:2] == "1" {
    c += 1
  }
  if s[2:] == "1" {
    c += 1
  }
  fmt.Printf("%d\n", c)
}