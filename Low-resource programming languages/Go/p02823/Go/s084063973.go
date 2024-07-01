package main

import ("fmt"
       )
func main(){
var n,a,b int64
  
  fmt.Scanf("%d %d %d",&n,&a,&b)
  if (b-a)%2 == 0{
  s:=(b-a)/2
  fmt.Println(s)
  } else {
    if a < n-b {
      s:=a+(b-a+1)/2
      fmt.Println(s)
    } else {
      s:=n-b+(a-b)/2
      fmt.Println(s)
    }
  
  }

}