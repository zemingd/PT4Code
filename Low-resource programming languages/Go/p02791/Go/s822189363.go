package main 

import (
  "fmt"
)

func main() {
  var n int
  fmt.Scan(&n)
  
  p := make([]string ,n)
  for i := 0; i < n; i++ {
    fmt.Scan(&p[i])
  }
  
  ans := 1
  
  for i := 1; i < n; i++ {
    if p[i-1] > p [i] {
      ans ++
    }
  }
  
  fmt.Println(ans)
  
}