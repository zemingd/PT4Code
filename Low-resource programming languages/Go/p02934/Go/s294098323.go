package main
 
import (
  "fmt"
)
 
func main() {
 
  var n int
  fmt.Scanln(&n)
  d := scanFloats(n)
 
  var reciprocals float64
  for i := 0; i < n; i++ {
    reciprocals += 1 / d[i]
  }
  
  fmt.Print(1 / reciprocals)
}
 
func scanFloats(len int) (nums []float64) {
    var num float64
    for i := 0; i < len; i++ {
        fmt.Scan(&num)
        nums = append(nums, num)
    }
    return
}