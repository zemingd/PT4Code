package main

import "fmt"

func f(n int)(t int){
  if n<2{
    t=1
  return t
  }else{
    t=n*f(n-2)
    return t
  }
}

func main(){
var a int
  fmt.Scanf("%d",&a)
  
  s:=fmt.Sprintf("%s",f(a))
  d:=0
  for _,v:=range s{
    if string(v)=="0"{
      d=d+1
    }else{
    break
    }
  }
  fmt.Println(d)

}