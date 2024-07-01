package main

import (
  "fmt"
  "sort"
)

func main() {
  var a, b, c int
  fmt.Scan(&a)
  fmt.Scan(&b)
  fmt.Scan(&c)
  data := []int{a, b, c}
  sort.Ints(data)
  fmt.Print(data[2]*10+data[1]+data[0])
}
