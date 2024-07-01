package main

import "fmt"

func main() {
  var r,g,b,n int
  fmt.Scan(&r,&g,&b)
  n = g + g + b
  if n%4 == 0 {
    fmt.Println("YES")
  } else {
    fmt.Println("NO")
  }
}