package main
 
import (
  "fmt"
)
 
func foo(n, a, b int) int {
  ls := (b-a)%n
  if ls%2 == 0 {
    if ls <= n/2 {
      return ls/2
    } else {
      return (n-ls)/2
    }
  } else {
    l := []int{n-a,b-1,Max(n-b+1, a-1),Max(a, n-b)}
    for i, e := range l {
      if e == 0 {
        l[i] = n
      }
    }
    return Min(l...)
  }
}
 
func Min(a ...int) int {
    min := int(^uint(0) >> 1)  // intの最大値
    for _, i := range a {
        if i < min {
            min = i
        }
    }
    return min
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