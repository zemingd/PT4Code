package main

import (
  "fmt"
  "sort"
)

type Sortable []int
func (d Sortable) Len() int { return len(d) }
func (d Sortable) Swap(i, j int) { d[i], d[j] = d[j], d[i] }
func (d Sortable) Less(i, j int) bool { return d[i] < d[j] }

func main() {
  var N, K int
  fmt.Scan(&N, &K)
  p := N * (N-1) / 2 + 1
  A := make(Sortable, N)
  R := make(Sortable, p)
  for i := 0; i < N; i++ {
    fmt.Scan(&A[i])
  }
  c := 0
  for i := 0; i < N; i++ {
    for j := i+1; j < N; j++ {
      R[c] = A[i] * A[j]
      c += 1
    }
  }
  sort.Sort(R)
  fmt.Println(R[K])
}