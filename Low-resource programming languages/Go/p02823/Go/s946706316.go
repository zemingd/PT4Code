package main
 
import (
  "fmt"
)
 
func foo(n, a, b int) int {
  ls := (b-a)%n
  if ls%2 == 0 {
    return Min([]int{ls, n-ls}...)/2
  } else {
    return Min(Max(Min(n-b+1, b-1), Min(a-1, n-a+1)), Max(Min(a, n-a), Min(b, n-b)))
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