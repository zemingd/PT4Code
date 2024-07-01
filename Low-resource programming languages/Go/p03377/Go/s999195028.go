package main

import "fmt"

func main(){
  var a, b, c int
  fmt.Scan(&a, &b, &c)
  if c > a{
    fmt.Println("NO")
  }else{
    if a - c <= b{
      fmt.Println("YES")
    }else{
      fmt.Println("NO")
    }
  }
}
