package main

import (
  "fmt"
)

func main(){
  var n int
  var ans int
  fmt.Scan(&n)
  
  for i:=1; i<n+1; i++ {
    ans += i
  }
  fmt.Print(ans)
}