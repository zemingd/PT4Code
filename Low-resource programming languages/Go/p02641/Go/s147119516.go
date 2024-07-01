package main
import (
	"fmt"
)

func notExist(l []int, i int) bool{
  flag := true
  for _, v := range l {
    if v == i {
      flag = false
      return flag
    }
  }
  return flag
}

func loop (x, n int, l []int) int {
  ans := x
  for i:=0; i < n; i++ {
    for j := -1; j != 3; j +=2{
      if notExist(l, x + i * j) {
        ans = x + i * j
        return ans
      }
    }
  }
  return ans
}

func main() {
  var x, n, a int
  fmt.Scan(&x)
  fmt.Scan(&n)
  l := make([]int, n)
  for i:=0; i < n; i++ {
    fmt.Scan(&a)
    l[i] = a
  }

  ans := loop(x, n, l)
  fmt.Printf("%d\n", ans) 
}