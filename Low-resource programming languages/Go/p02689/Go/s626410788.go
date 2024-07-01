package main

import (
  "fmt"
)

func main() {
  var (
    n,m,a,b,ans int
  )
  fmt.Scan(&n)
  fmt.Scan(&m)
  h := make([]int64, n)
  for i:=0; i<n; i++ {
    fmt.Scan(&h[i])
  }
  p := make([]int, n)
  for c:=0; c<n; c++ {
    p[c] = 1
  }

  for j:=0; j<m; j++ {
    fmt.Scan(&a)
    fmt.Scan(&b)
    a--
    b--
    if h[a] < h[b] {
      p[a] = 0
    } else {
      p[b] = 0
    }
  }
  for _, x := range p {
    ans += x
  }
  fmt.Println(ans)
}
