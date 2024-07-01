package main
 
import (
  "fmt"
)
 
func main() {
  var N, K int
  var a, b int
  fmt.Scan(&N)
  fmt.Scan(&K)
  
  array := make(map[int]int)
  for i := 0; i < N; i++ {
    fmt.Scan(&a)
    fmt.Scan(&b)
    array[a] += b
  }
  
  sum := 0
  for k, v := range array {
    sum += v
    if sum < K {
      continue
    }
    fmt.Printf("%d\n", k)
    break
  }
}