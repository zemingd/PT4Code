package main

import (
  "fmt"
)

func main() {
  var N int
  fmt.Scan(&N)
  d := make([]int, N)
  mochi := make(map[int]int)
  for i := range d {
    fmt.Scan(&d[i])
    mochi[d[i]]++;
  }
  fmt.Println(len(mochi))
}