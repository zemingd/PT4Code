package main

import (
  "fmt"
)

func main() {
  var n, k, d1 int
  fmt.Scan(&n, &k)
  fmt.Scan(&d1)
  //fmt.Println(n-d1)
  var aa []int
  for i:=1;i<=d1;i++{
    var ii int
    fmt.Scan(&ii)
    aa = append(aa, ii)
  }
  var kk []int
  for i:=1;i<=k;i++{
    var ii int
    fmt.Scan(&ii)
    kk = append(kk, ii)
  }
  //fmt.Println(n,k)
  //fmt.Println(d1)
  //fmt.Println(aa)
  //fmt.Println(kk)
  fmt.Println(n-d1)
}
