package main

import "fmt"

func main(){
  var a, b, c int
  fmt.Scan(&a, &b, &c)
  if a > c{
    fmt.Println("NO")
  }else{
    if c - a <= b{
      fmt.Println("YES")
    }else{
      fmt.Println("NO")
    }
  }
}
