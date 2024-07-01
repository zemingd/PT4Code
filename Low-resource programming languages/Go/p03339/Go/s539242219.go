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
    if i != 0 {
      if s[i-1] == 'W' {
        leftW[i] = leftW[i-1]+1
      } else {
        leftW[i] = leftW[i-1]
      }
    }
  }
  for i := n-1; 0 <= i; i-- {
    if i != n-1 {
      if s[i+1] == 'W' {
        rightE[i] = rightE[i+1]
      } else {
        rightE[i] = rightE[i+1] + 1
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