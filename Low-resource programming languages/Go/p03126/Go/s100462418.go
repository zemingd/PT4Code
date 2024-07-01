package main

import "fmt"

func main() {
  var n, m int
  fmt.Scan(&n, &m)
  f := make([]int, m)
  for i := 0; i < n; i++ {
    var k int
    fmt.Scan(&k)
    a := make([]int, k)
    for i := 0; i < k; i++ {
      fmt.Scan(&a[i])
      f[a[i]-1]++
    }
  }
  var count int
  for _, v := range f {
    if v == n {
      count++
    }
  }
  fmt.Println(count)
}
