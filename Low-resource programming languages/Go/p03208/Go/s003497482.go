package main

import (
  "fmt"
  "sort"
)

func min(a, b int) int {
  if a < b {
    return a
  }
  return b
}

func main() {
  var n, k int
  fmt.Scan(&n, &k)
  
  nums := make([]int, n)
  for i:=0; i<n; i++ {
    fmt.Scan(&nums[i])
  }
  
  sort.Sort(sort.IntSlice(nums))
  
  m := 1000000000
  for i:=0; i<n-k+1; i++ {
    var p int
    p = nums[i+k-1] - nums[i]
    m = min(m, p)
  }
  
  fmt.Println(m)
}