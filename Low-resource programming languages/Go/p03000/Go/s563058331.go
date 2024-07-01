package main

import (
	"fmt"
)

func main() {
	var n int
  	var x int
	fmt.Scan(&n)
	fmt.Scan(&x)
 
  l := make([]int, x)
  for i := 0; i + 1 < n; i++ {
    fmt.Scan(&l[x])
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
