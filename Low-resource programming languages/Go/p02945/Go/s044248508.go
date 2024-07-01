package main

import "fmt"

func main(){
  var A int
  var B int 
  var sum int
  var diff int 
  var mult int
  
  fmt.Scan(&A)
  fmt.Scan(&B)
  
  sum = A + B
  diff = A - B
  mult = A * B
  
  if(sum >= diff && sum >= mult){
    fmt.Print(sum)
  }else if(diff >= sum && diff >= mult){
    fmt.Print(diff)
  }else if(mult >= sum && mult >= diff){
    fmt.Print(mult)
  }
}
  