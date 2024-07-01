package main

import "fmt"

func main {
  var s, t string
  fmt.Scan(&s, &t)
  
  if t[:len(s)-1] == s{
    fmt.Println("Yes")
  } else {
    fmt.Println("No")
  }
}