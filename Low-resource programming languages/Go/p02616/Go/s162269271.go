package main
 
import (
	"fmt"
	"strconv"
    "math"
    "sort"
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
    for _, vall := range valueInt[i+1:len(valueInt)] {
      sekiInt = append(sekiInt, val * vall)
    }
  }
  fmt.Println(maxFloat(sekiInt) % (math.Pow(10, 9) + float64(7)))
}

func maxFloat(a []int) float64 {
    sort.Sort(sort.IntSlice(a))
    return float64(a[len(a)-1])
}
