package main
 
import (
  "fmt"
  "math"
  "strconv"
)
 
func main() {
  var N int
  fmt.Scan(&N)
  
  ans := 10
  root := math.Pow(float64(N), 0.5)
  for i := 1; float64(i) <= root ; i++ {
    if N % i != 0 {
      continue
    }
    F := len(strconv.Itoa(i))
    if len(strconv.Itoa(i)) < len(strconv.Itoa(N / i)) {
      F = len(strconv.Itoa(N / i))
    }
    if F < ans {
      ans = F
    }
  }
  fmt.Printf("%d\n", ans)
}