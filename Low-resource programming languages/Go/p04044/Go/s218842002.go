package main

import (
  "fmt"
  "strings"
  "sort"
)

func main() {
  var n, l int
  fmt.Scanf("%d %d", &n, &l)
  arr := make([]string, n)

  for i := 0; i < n; i++ {
    fmt.Scanf("%s", &arr[i])
  }
  sort.Strings(arr)
  fmt.Println(strings.Join(arr, ""))
}