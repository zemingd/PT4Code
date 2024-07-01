package main

import (
	"fmt"
)

func main() {
	var n, x int
	fmt.Scan(&n, &x)
 
  var l = make([]int, n)
  for i := 0; i + 1 < n; i++ {
    fmt.Scan(&l[i])
  }
  
  var sum int
  c := 1
  for _, v := range l {
    sum = sum + v
    c++
    if sum > x {
      break
    }
  }
  fmt.Println(c)
}
