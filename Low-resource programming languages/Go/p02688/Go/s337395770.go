package main

import (
  "fmt"
)

func main() {
  var n, k int
  set := make(map[int]struct{})
  fmt.Scanf("%d %d", &n, &k)

  for i := 0; i < k; i++ {
    var d, v int
    fmt.Scanf("%d", &d)

    for j := 0; j < d; j++ {
      fmt.Scanf("%d", &v)
      set[v] = struct{}{}
    }
  }

  ans := n - len(set)
  fmt.Println(ans)

}
