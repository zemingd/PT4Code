package main

import (
  "fmt"
)

func main() {

  var n, l int
  fmt.Scan(&n, &l)
  
  var apples [] int
  var taste int
  taste = l
  for i:=1; i<=n; i++ {
    apples = append(apples, taste)
    taste += 1
  }
  
  var ntotal int
  for _, v := range(apples) {
    ntotal += v
  }
  
  if l > 0 {
    fmt.Println(ntotal - l) 
  } else {
    if (n + l) > 0 {
      fmt.Println(ntotal) 
    } else {            
      fmt.Println(ntotal - (n + l - 1)) 
    }
  }
}