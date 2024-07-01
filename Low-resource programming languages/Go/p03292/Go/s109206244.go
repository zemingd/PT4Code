package main
import (
  "fmt"
  "sort"
)
func main() {
  as := make([]int, 3)
  for i := 0; i < 3; i++ {
    fmt.Scan(&as[i])
  }
  sort.Ints(as)
  result := as[2] - as[0]
  fmt.Println(result)
}