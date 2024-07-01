package main

import (
  "fmt"
)

func main() {
  var n int
  fmt.Scan(&n)
  a := make([]int, n)
  for i := 0; i < n; i++ {
    fmt.Scan(&a[i])
  }
  if len(a)!=len(removeDuplicate1(a)) {
    fmt.Println("No")
  } else {
    fmt.Println("Yes")
  }
}

func removeDuplicate1(args []int) []int {
    results := make([]int, 0, len(args))
    encountered := map[int]bool{}
    for i := 0; i < len(args); i++ {
        if !encountered[args[i]] {
            encountered[args[i]] = true
            results = append(results, args[i])
        }
    }
    return results
}
