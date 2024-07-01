package main

import (
  "fmt"
  "sort"
)

func main ()  {
  a := make([]int, 3)
  for i := range a {
    fmt.Scan(&a[i])
  }
  sort.Ints(a)
  for i := range a {
    fmt.Print(a[i])
    if i + 1 < len(a) {
      fmt.Print(" ")
    }
  }
  fmt.Println("")
}

