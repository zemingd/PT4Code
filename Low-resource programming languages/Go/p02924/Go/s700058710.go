package main

import (
  "fmt"
  )

func main(){
  var n,ans uint64
  fmt.Scan(&n)
  if n == 1 {
    fmt.Println("0")
    return
  }
  p := make([]uint64, n)
  var i uint64 = 0
  for i = 0; i<n;i++ {
    p[i]=n-i
  }
  tmp := n
  var l uint64
  for l = 1; l < n; l++ {
    ans += (p[l]%tmp)
    tmp--
  }
  fmt.Println(ans)
}