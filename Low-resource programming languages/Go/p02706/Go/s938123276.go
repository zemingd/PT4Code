package main 

import (
  "fmt"
)

func main() {
  var n, m int
  fmt.Scan(&n, &m)
  
  a := make([]int ,n)
  for i := 0; i < n; i++ {
  fmt.Scan(&a[i])
  }

  days := 0
  for _, x := range a {
    days += x
  }
  
  if n - days > 0 {
  fmt.Println(n - days)
  } else {
  fmt.Println(-1)
  }
}