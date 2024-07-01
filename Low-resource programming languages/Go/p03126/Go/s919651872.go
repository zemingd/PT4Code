package main

import (
  "fmt"
)

func main() {
  var n, m int
  fmt.Scan(&n, &m)
  ks := make([]int, n)
  ass := make([][]int, n)
  for i := 0; i < n; i++ {
    fmt.Scan(&ks[i])
    ass[i] = make([]int, ks[i])
    for j := 0; j < ks[i]; j++ {
      fmt.Scan(&ass[i][j])
    }
  }
  
  counter := make(map[int]int)
  for _, as := range ass {
    for _, a := range as {
   	  counter[a]++ 
    }
  }
  
  result := 0
  for _, num := range counter {
    if num == n {
      result++
    }
  }
  fmt.Println(result)
}