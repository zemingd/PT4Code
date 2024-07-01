package main

import (
  "fmt"
)

func main() {
  var n, m, tmp, cnt, a, b, aVal, bVal int
  set := make(map[int]struct{})
  cntset := make(map[int]struct{})
  cnt = 0
  fmt.Scanf("%d %d", &n, &m)
  sl := make([]int, n+1)
  sl[0] = 0

  for i := 1; i <= n; i++ {
    fmt.Scanf("%d", &tmp)
    sl[i] = tmp
  }

  for j := 0; j < m; j++ {
    fmt.Scanf("%d %d", &a, &b)
    set[a] = struct{}{}
    set[b] = struct{}{}
    aVal = sl[a]
    bVal = sl[b]
    if aVal < bVal {
      cntset[b] = struct{}{}
      _, okA := cntset[a]
      if okA {
        delete(cntset, a)
      }
    } else if aVal < bVal {
      cntset[b] = struct{}{}
      _, okB := cntset[b]
      if okB {
        delete(cntset, b)
      }
    }
  }
  cnt += len(cntset)
  cnt += n - len(set)
  fmt.Println(cnt)
}
