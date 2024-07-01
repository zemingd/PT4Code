package main
 
import (
  "fmt"
)
 
func foo(n, a, b int) int {
  ls := b - a
  if ls%2 == 0 {
    return Min(ls, n-ls)/2
  } else {
    return Min(Max(b-1, a-1), Max(n-a, n-b))
  }
}
 
func Min(a, b int) int {
  if a < b {
    return a
  } else {
    return b
  }
}
 
func Max(a, b int) int {
  if a > b {
    return a
  } else {
    return b
  }
}

func main() {
  var n, a, b int
  fmt.Scan(&n)
  fmt.Scan(&a)
  fmt.Scan(&b)
  fmt.Println(foo(n, a, b))
}
