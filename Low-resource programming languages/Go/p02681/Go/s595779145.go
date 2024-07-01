package main

import "fmt"

func main{
  var s,t string
  fmt.Scan(&s, &t)
  
  if [len(t)-1:][0] == s{
    fmt.Println("Yes")
  } else {
    fmt.Println("No")
  }
  
}