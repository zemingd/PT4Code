package main

import "fmt"

func main(){
  var l int
  var s1,s2,ans string
  fmt.Scan(&l, &s1, &s2)
  for i:=0;i<l;i++{
    ans += s1[i]
    ans += s2[i]
  }
  fmt.Println(ans)
}