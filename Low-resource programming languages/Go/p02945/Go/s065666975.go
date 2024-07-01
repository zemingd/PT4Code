package main

import (
  "fmt"
  "sort"
)

func main() {
  var a, b int
  fmt.Scan(&a, &b)

  s := []int{a+b, a-b, a*b}

  sort.Sort(sort.IntSlice(s))

  fmt.Println(s[2])
}