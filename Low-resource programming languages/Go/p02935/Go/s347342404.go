package main 

import (
  "fmt"
  "sort"
)

func main() {
  var n int
  fmt.Scan(&n)

  v := make([]float64 ,n)
  for i := 0; i < n; i++ {
    fmt.Scan(&v[i])
  }
  
  for j := 0; j < n-1 ; j++ {
    sort.Float64s(v)
    v = append(v, (v[0]+v[1])/2)
    v = v[2:]
  }
  
  fmt.Println(v[0])
  
}
