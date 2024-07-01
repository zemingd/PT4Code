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
    if n-a >= b {
      fmt.Println(b-1)
    } else {
      fmt.Println(n-a)
    }
  
  }

}