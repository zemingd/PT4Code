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
  var c int
  for _, v := range l {
    sum += v
    if sum > x {
      break
    }
    c = c + 1
  }
  fmt.Println(c)
}
