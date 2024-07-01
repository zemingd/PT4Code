package main

import "fmt"

func main(){
  var a, b, c int
  fmt.Scan(&a, &b, &c)
  if (b*10+c)%4 == 0{
    fmt.Println("YES")
  }else{
    fmt.Println("NO")
  }
}
