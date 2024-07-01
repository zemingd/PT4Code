package main 

import (
  "fmt"
  "sort"
)

func main() {
  var n, l int
  fmt.Scan(&n, &l)

  s := make([]string ,n)
  for i := 0; i < n; i++ {
    fmt.Scan(&s[i])
  }
  
  sort.Strings(s)
  
  for j := 0; j < n; j++ {
    fmt.Print(s[j])
  }
  fmt.Print()
}