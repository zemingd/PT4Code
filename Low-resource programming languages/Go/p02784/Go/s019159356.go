package main

import "fmt"

func main(){
  var int h, n, damage int
  var a [] int
  fmt.Scan(&h, &n)
  for i := 0; i < n; i++ {
    fmt.Scan(&a[i])
  }
  for j:=0; i < len(a); i++ {
    damage += a[j]
  }
  if damage >= h {
    fmt.Print("Yes")
  } else {
    fmt.Print("No")
  }
}