// C_i > B_i > A_i

package main

import (
  "fmt"
  "sort"
)

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
  sort.Sort(sort.IntSlice(b))
  sort.Sort(sort.IntSlice(c))
  ans := 0
  for i := 0; i < n; i++ {
    for j := 0; j < n; j++ {
      if c[i] <= b[j] {
        break
      }
      for k := 0; k < n; k++ {
        if b[j] <= a[k] {
          break
        }
        ans++
      }
    }
  }
  fmt.Println(ans)
}
