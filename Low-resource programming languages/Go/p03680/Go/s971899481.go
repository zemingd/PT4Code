package main

import(
  "fmt"
)

func main() {
  var n int
  fmt.Scan(&n)
  a := make([]int, n)
  for i := 0; i < n; i++ {
    fmt.Scan(&a[i])
  }
  b := make([]bool, n)
  b[0] = true
  k := 0
  ok := false
  ans := 0
  for {
    ans += 1
    k = a[k] - 1
    if k == 1 {
      ok = true
      break
    }
    if b[k] {
      break
    }
    b[k] = true
  }
  if ok {
    fmt.Print(ans)
  } else {
    fmt.Print(-1)
  }
}