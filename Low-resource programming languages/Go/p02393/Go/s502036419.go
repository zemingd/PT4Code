package main

import (
  "fmt"
  "sort"
)

func main() {
  var a,b,c int
  fmt.Scan(&a, &b, &c)
  slice := []int{a, b, c}

  sort.Sort(sort.IntSlice(slice))
  fmt.Println(slice[0], slice [1], slice[2])
}
