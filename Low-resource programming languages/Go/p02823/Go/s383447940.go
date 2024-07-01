package main

import "fmt"

func main() {
  var a, b, n int
  fmt.Scanf("%d %d %d", &n, &a, &b)
  if (a - b) % 2 == 0 {
    fmt.Println(abs(a - b) / 2)
  } else {
    p, q := n - a, n - b
    m := min(a - 1, b - 1, p, q)
    fmt.Println(m + 1 + (abs(a - b) - 1) / 2)
  }
}

func abs(m int) int {
  if m > 0 {return m}
  return -m
}

func min(a ...int) int {
  m := a[0]
  for _, v := range a {
    if v < m {
      m = v
    }
  }
  return m
}