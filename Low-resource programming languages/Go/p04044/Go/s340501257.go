package main

import (
  "fmt"
)

func main() {
  var n, l int
  fmt.Scanf("%d %d", &n, &l)
  
  strList := make([]string, n)
  for i := 0; i < n; i++ {
    fmt.Scanf("%s", &strList[i])
  }
  
  for i := n; i > 0; i-- {
    for j := 1; j < n; j++ {
      for k := 0; k < n-j; k++ {
        if strList[k][i-1:i] > strList[k+1][i-1:i] {
          tmp := strList[k]
          strList[k] = strList[k+1]
          strList[k+1] = tmp
        }
      }
    }
  }
  
  for _, v := range strList {
    fmt.Printf("%s", v)
  }
}