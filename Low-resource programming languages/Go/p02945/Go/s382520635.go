package main

import(
  "fmt"
)

func main() {
  var a, b int
  fmt.Scan(&a, &b)
  if a + b > a - b {
    r := a + b
  } else {
    r := a -b 
  }
  if r > a * b {
    fmt.Println(r)
  } else {
    fmt.Println(a*b)
  }
}