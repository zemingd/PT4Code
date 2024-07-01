package main
 
import (
	"fmt"
	"strconv"
    "math"
)
 
func main() {
  var n, k int
  fmt.Scan(&n)
  fmt.Scan(&k)
  var valueInt []int
  var str string
  for i := 0; i < n; i++ {
    fmt.Scan(&str)
	num, _ := strconv.Atoi(str)
	valueInt = append(valueInt, num)
  }
  
  var sekiInt []int
  for i, val := range valueInt {
    for j, vall = range valueInt[i+1:len(valueInt)] {
      sekiInt = append(sekiInt, val * vall)
    }
  }
  fmt.Println(maxInt(sekiInt) % (math.Pow(10, 9) + 7))
}

func maxInt(a []int) int {
    sort.Sort(sort.IntSlice(a))
    return a[len(a)-1]
}
