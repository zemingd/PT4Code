package main

import "fmt"

func main(){
  var l int
  var s1,s2,ans string
  fmt.Scan(&l, &s1, &s2)
  for i:=0;i<l;i++{
    ans += string(s1[i])
    ans += string(s2[i])
  }
  fmt.Println(ans)
}
