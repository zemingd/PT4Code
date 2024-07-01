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
  for i := 0; i < n; i ++ {
    var tmpL int
    fmt.Scan(&tmpL)
    l = append(l, tmpL)
  }
  
  var tmpSum int
  var rs int
  for i, v := range l {
    tmpSum += v
    if i >= n {
      rs = n
      break
    }
    if tmpSum <= x {
      rs = i + 2
    } else if tmpSum > x {
    	break
    }
  }
	fmt.Println(rs)
}