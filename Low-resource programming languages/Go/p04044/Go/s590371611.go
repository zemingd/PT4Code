package main

import(
  "fmt"
  "sort"
)

func main() {
  var n, l int
  fmt.Scan(&n, &l)
  s := make([]string, n)
  fmt.Scan(s)
  sort.Strings(s)
  for _, t := range s {
    fmt.Print(t)
  }
}