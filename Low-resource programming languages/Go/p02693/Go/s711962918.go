package main

import (
	"fmt"

)

func main(){
  var k,a,b int64;
  fmt.Scan(&k);
  fmt.Scan(&a);
  fmt.Scan(&b);
  if(a%k==0){
    fmt.Println("OK")
    return
  }
  start:=a/k
  for ;start*k<=b;start++{
    if(start*k>=a){
    fmt.Println("OK")
    return
    }
  }
  fmt.Println("NG")
}