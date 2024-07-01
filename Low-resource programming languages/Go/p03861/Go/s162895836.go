package main

import (
  "fmt"
)
func main(){
  var a,b,x,ans int
  fmt.Scan(&a,&b,&x)
  ans = (b-a)/x
  if a%x==0 {
    ans++;
  }
  fmt.Println(ans)
}