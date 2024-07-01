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
  isNEven := n%2 == 0
  result := make([]int, 0, 200000)
  for i := 0; i < n; i++ {
    isIEven := i%2 == 0
    if isNEven == isIEven {
      result = append(result, a[i])
    } else {
      result = append([]int{a[i]}, result...)
    }
  }
  for i := 0; i < n; i++ {
    fmt.Print(result[i])
    if i != n-1 {
      fmt.Print(" ")
    }
  }
  fmt.Println()
}