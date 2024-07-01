package main
 
import (
  "fmt"
  "sort"
)
 
func main() {
  var N, K int
  var a, b int
  fmt.Scan(&N)
  fmt.Scan(&K)
  
  array := make(map[int]int)
  slice := make([]int, N)
  for i := 0; i < N; i++ {
    fmt.Scan(&a)
    fmt.Scan(&b)
    array[a] += b
    slice = append(slice, a)
  }
  sort.Slice(slice, func(i, j int) bool { return i < j })
  
  sum := 0
  for k := range slice {
    sum += array[k]
    if sum < K {
      continue
    }
    fmt.Printf("%d\n", k)
    break
  }
}