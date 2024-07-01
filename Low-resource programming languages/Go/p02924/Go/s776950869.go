package main

import (
  "fmt"
  )

func main(){
  var n,ans int64
  fmt.Scan(&n)
  if n == 1{
    fmt.Println("0")
    return
  }
  p := make([]int64, n)
  var i int64 = 0
  for i = 0; i<n;i++ {
    p[i]=n-i
  }
  tmp := n
  var l int64
  for l = 1; l < n; l++ {
    ans += (p[l]%tmp)
    tmp--
  }
  fmt.Println(ans)
}