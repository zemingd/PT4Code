package main

import (
  "fmt"
)

func main () {
  var (
  	n, k, x, y int
    ans int
  )
  
  fmt.Scan(&n)
  fmt.Scan(&k)
  fmt.Scan(&x)
  fmt.Scan(&y)
  
  
  for i := 0; i < n; i++ {
    if i >= k {
    	ans += y
    }else{
    	ans += x
    }
  }
  
  fmt.Println(ans)


}