package main
import (
  "fmt"
  "math"
  "strconv"
)
func main() {
  var n,m,l int64
  fmt.Scan(&n)
  m = sqrt(n)
  l = 0
  for i:=m;i>0;i-- {
    if n%i == 0 {
      l = n/i
      break
    }
  }
  if l == 0 {
    fmt.Println(len(strconv.FormatInt(n,10)))
  } else {
    fmt.Println(len(strconv.FormatInt(l,10)))
  }
}
func sqrt(n int64) int64 {
  var f float64 = math.Sqrt(float64(n))
  return int64(math.Ceil(f))
}