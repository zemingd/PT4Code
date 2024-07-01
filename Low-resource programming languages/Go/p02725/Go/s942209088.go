package main

import (
  "fmt"
)

func main() {
  var k,n,i,j,diff int
  var maxdiff int
  fmt.Scan(&k)
  fmt.Scan(&n)
  a := make([]int, n)
  for i=0; i<n; i++ {
    fmt.Scan(&a[i])
  }

  for j=0; j<n-1; j++ {
    diff = a[j+1] - a[j]
    if diff > maxdiff {
      maxdiff = diff
    }
  }

  if k-a[n]+a[0] < maxdiff {
    fmt.Println(k-maxdiff)
  } else {
    fmt.Println(a[len(a)-1]-a[0])
  }
}
