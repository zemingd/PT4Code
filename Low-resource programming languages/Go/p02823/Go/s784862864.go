package main
 
import (
  "fmt"
)
 
func foo(n, a, b int) int {
  ls := b - a
  if ls%2 == 0 {
    return ls/2
  } else {
    return Min(b-1, n-a)
  }
}
 
func Min(a, b int) int {
  if a < b {
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