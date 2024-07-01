package main

import (
  "fmt"
  "sort"
)

func main() {
  var N, ans, a, b, c int
  fmt.Scan(&N)
  L := make([]int, N)
  for i := range L {
    fmt.Scan(&L[i])
  }
  sort.Ints(L)
  for a = N-1; a >= 2; a--{
    for b = a-1; b >= 1; b--{
      for c = b-1; c >= 0 && L[a] < L[b]+L[c]; c--{}
      if c != b-1 {
        ans += b-(c+1)
      }
    }
  }
  fmt.Println(ans)
}
