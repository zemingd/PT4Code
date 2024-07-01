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
  sort.Ints(a)
  result := a[2] - a[0]
  fmt.Println(result)
}