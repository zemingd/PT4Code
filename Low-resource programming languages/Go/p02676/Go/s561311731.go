package main

import "fmt"

func main() {
  var s string
  var k int
  fmt.Scan(&k,&s)
  if k < len(s) {
    fmt.Println(s[:k]+"...")
  } else {
    fmt.Println(s)
  }
}
