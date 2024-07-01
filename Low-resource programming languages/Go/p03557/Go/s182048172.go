package main

import (
  "fmt"
  "sort"
)

func find(a []int, x int, max bool) int {
  i := sort.SearchInts(a, x)
  if i < 0 {
    return 0
  }
  if len(a) <= i {
    return len(a)
  }
  if a[i] == x && !max {
    i++
  }
  if a[i] < x {
    if max {
      i++
    } else {
      i--
    }
  }
  return i
}

func main() {
  var n int
  fmt.Scan(&n)
  a := make([]int, n)
  b := make([]int, n)
  c := make([]int, n)
  for i := 0; i < n; i++ {
    fmt.Scan(&a[i])
  }
  for i := 0; i < n; i++ {
    fmt.Scan(&b[i])
  }
  for i := 0; i < n; i++ {
    fmt.Scan(&c[i])
  }
  sort.Sort(sort.IntSlice(a))
  sort.Sort(sort.IntSlice(c))
  ans := 0
  for i := 0; i < n; i++ {
    j := find(a, b[i], true)
    k := find(c, b[i], false)
    ans += j * (len(c) - k)
  }
  fmt.Println(ans)
}
