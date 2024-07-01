package main

import "fmt"
//import "sort"

func main(){
  var a,b,c,sum int
  fmt.Scan(&a, &b)
  for i:=0 ; i<b; i++{
    fmt.Scan(&c)
    sum += c
  }

  if sum >= a {
    fmt.Println("Yes")
  } else {
    fmt.Println("No")
  }
}