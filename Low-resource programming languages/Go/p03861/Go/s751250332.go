package main

import "fmt"

type long int64

func main() {
  var a,b,x,ans long
  fmt.Scan(&a,&b,&x)
  
  if a % x == 0 {
    ans++
  }
  
  ans += b / x - a / x
  fmt.Println(ans)
  
}