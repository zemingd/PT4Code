package main

import "fmt"

func main() {
  var s string
  fmt.Scan(&s)
  
  s[3] = '8'
  fmt.Println(s)
}