package main

import "fmt"

func main() {
  var s string
  fmt.Scan(&s)
  var count int
  if s[1] == '1' {
    count++
  }
  if s[2] == '2' {
    count++
  }
  if s[3] == '3' {
    count++
  }
  fmt.Println(count)
}
