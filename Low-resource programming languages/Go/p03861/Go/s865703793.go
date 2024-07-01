package main

import (
  "fmt"
)
func main(){
  var a,b,x,ans int64
  fmt.Scan(&a,&b,&x)
  ans = b/x-a/x
  if a%x==0 {
    ans++;
  }
  fmt.Println(ans)
}
