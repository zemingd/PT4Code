package main

import (
  "fmt"
)

func main() {
  var n int
  fmt.Scanf("%d",&n)
  
  hp := 0
  num := make([]int,n)
  for i:=0; i < n; i++ {
    fmt.Scanf("%d",&num[i])
  }
  for i:=0; i < n-1; i++ {
    for j:=i+1; j<n; j++ {
      hp += num[i] * num[j]
    }
  }
  fmt.Printf("%d",hp)
}