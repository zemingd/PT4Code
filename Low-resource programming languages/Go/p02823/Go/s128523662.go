package main
 
import (
  "fmt"
)
 
func foo(n, a, b int) int {
  ls := (b-a)%n
  if ls%2 == 0 {
    return Min([]int{ls, n-ls}...)/2
  } else {
    l := []int{Max(Min([]int{n-b+1, b-1}...), Min([]int{a-1, n-a+1}...)),Max(Min([]int{a, n-a}...), Min([]int{b, n-b}...))}
    /*for i, e := range l {
      if e == 0 {
        l[i] = n
      }
    }*/
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