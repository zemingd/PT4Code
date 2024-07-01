package main

import (
  "fmt"
)

var (
  A int
  B int
  C int
  D int
  E int
  F int
  max_s int // sugar
  max_total int // sugar + water
  max_density float32
)

func dfs(w, s int, stop bool) {
  if s + w > F {
    return
  }
  if s > E * w / 100 {
    return
  }

  total := s + w
  d := 100.0 * float32(s) / float32(total)
  if max_density < d {
    max_density = d
    max_s = s
    max_total = total
  }

  if stop {
    return
  }

  dfs(w + 100 * A, s, false)
  dfs(w + 100 * B, s, false)

  x := (F - w - s) / C
  y := (F - w - s) / D
  for i := x; i >= 1; i-- {
    dfs(w, s + C * i, true)
  }
  for i := y; i >= 1; i-- {
    dfs(w, s + D * i, true)
  }
}

func main() {
  fmt.Scan(&A, &B, &C, &D, &E, &F)
  dfs(0, 0, false)
  fmt.Println(max_total, max_s)
}
