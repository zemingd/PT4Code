package main

import "fmt"

func main(){
  var s,i int
  fmt.Scan(&s)
  
  v := s
  var arr []int
  
  for i=1;;i++ {
    arr = append(arr,v)
    for j:=0;j<i-2;j++{
      if arr[j] == v {
        goto end
      }
    }
    v = fn(v)
  }
  end:
  fmt.Println(i)
}

func fn(v int) int{
  if v%2 == 0 {
    return v/2
  }else{
    return v*3 + 1
  }
}