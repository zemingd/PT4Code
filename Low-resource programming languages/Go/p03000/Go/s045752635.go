package main
 
import (
	"fmt"
)
 
func main() {
	var n, x int
	fmt.Scan(&n, &x)
 
  var l = make([]int, n)
  for i := 0; i < n; i++ {
    fmt.Scan(&l[i])
  }
  
  var sum int
  c := 1
  for _, v := range l {
    sum = sum + v
    if sum <= x {
	    c++
    }
  }
  fmt.Println(c)
}