package main
import (
  "fmt"
)
func main() {
  var n int
  fmt.Scan(&n)
  var s string
  fmt.Scan(&s)
  leftW := make([]int, n)
  rightE := make([]int, n)
  for i := 0; i < n; i++ {
    for j := 0; j < i; j++ {
      if s[j] == 'W' {
        leftW[i]++
      }
    }
    for j := i+1; j < n; j++ {
      if s[j] == 'E' {
        rightE[i]++
      }
    }
  }
  
  result := n
  for i := 0; i < n; i++ {
    total := leftW[i]+rightE[i]
    if total < result {
      result = total
    }
  }
  fmt.Println(result)
}