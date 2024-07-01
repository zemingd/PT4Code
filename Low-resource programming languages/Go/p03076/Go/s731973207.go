package main

import (
  "fmt"
)

func main() {
  n := 5
  a := make([]int, n)
  for i:=0; i < n; i++ {
    fmt.Scan(&a[i])
  }

  b := make([]int, n)
  c := 0
  d := 0
  for i:=0;i<n;i++{
    c = a[i] / 10
    d = a[i] % 10
    if d != 0 {
      b[i] = 10 * (c + 1)
    } else {
      b[i] = 10 * c
    }
  }

  ans_r := make([]int,n)
  for i:=0; i<n; i++ {
    for j:=0; j<n; j++ {
      if i == j {
        ans_r[i] += a[j]
      } else {
        ans_r[i] += b[j]
      }
    }
  }

  ans:= ans_r[0]
  for i:=1; i<n; i++ {
    if ans_r[i] < ans {
        ans = ans_r[i]
    }
  }
  fmt.Println(ans)


}
