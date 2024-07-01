package main
import (
  "fmt"
  "sort"
)
func main() {
  var n int
  fmt.Scan(&n)
  xs := make([]int, n)
  for i := 0; i < n; i++ {
    fmt.Scan(&xs[i])
  }
  
  sortedXs := make([]int, n)
  copy(sortedXs, xs)
  sort.Ints(sortedXs)
  smallB := sortedXs[len(sortedXs)/2 - 1]
  largeB := sortedXs[len(sortedXs)/2]

  for _, x := range xs {
    if x <= smallB {
      fmt.Println(largeB)
    } else {
      fmt.Println(smallB)
    }
  }
}