package main

import "fmt"

func main(){
  var s,i int
  fmt.Scan(&s)
  
  v := s
  for i=1;;i++ {
    v = fn(v)
    if v == 4{
      break
    }
  }
  
  fmt.Println(4+i)
}

func fn(v int) int{
  if v%2 == 0 {
    return v/2
  }else{
    return v*3 + 1
  }
}