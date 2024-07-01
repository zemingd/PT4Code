package main

import (
	"fmt"
)

func main() {
  var n int
  var x int
  var l []int
  fmt.Scan(&n)
  fmt.Scan(&x)
  fmt.Scan(&l)
  
  var tmpSum int
  var rs int
  for i, v := range l {
    tmpSum += v
    if i >= n {
      rs = i + 1
    }
    if tmpSum <= x {
         fmt.Println(i)
	rs = i + 2
    } else if tmpSum > x {
     break
     }
  }
	fmt.Println(rs)
}