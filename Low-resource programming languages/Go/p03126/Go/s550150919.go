package main

import (
  "fmt"
)

func main()  {
  var (
    n,m int
    k int
    tmp int
  )
  fmt.Scan(&n)
  fmt.Scan(&m)

  ans := make([]int,m)
  for i:=0;i<n;i++ {
    fmt.Scan(&k)
    for j:=0;j<k;j++ {
      fmt.Scan(&tmp)
      ans[(tmp-1)]++
    }
  }
  count:=0
  for i:=0;i<m;i++ {
    if ans[i] == n {
      count++
    }
  }
  fmt.Println(count)
}
