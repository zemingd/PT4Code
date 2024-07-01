package main

import (
  "fmt"
)

func min(a, b int) int {
  if a < b {
    return a
  } else {
    return b
  }
}

type P struct {
  c int
  s byte
}

func main() {
  var N, K int
  var S string
  fmt.Scan(&N, &K, &S)

  var ps []P
  
  p := P{c:1, s:S[0]}
  for i := 1; i < N; i++ {
    if S[i-1] != S[i] {
      ps = append(ps, p)
      p = P{c:1, s:S[i]}
    } else {
      p.c++
    }
  }
  ps = append(ps, p)

  var max, sum int
  width := K * 2 + 1

  if ps[0].s == '0' {
    ps = append([]P{P{c:0, s:'1'}}, ps...)
  }
  if ps[len(ps)-1].s == '0' {
    ps = append(ps, P{c:0, s:'1'})
  }

  L := len(ps)
  for i := 0; i < min(width, L); i++ {
    sum += ps[i].c
  }
  max = sum
  for i := min(width, L)+1; i < L; i+=2 {
    sum = sum + ps[i].c + ps[i-1].c - ps[i-min(width, L)].c - ps[i-min(width, L)-1].c
    if max < sum {
      max = sum
    }
  }
  fmt.Println(max)
}