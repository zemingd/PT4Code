package main
import (
  "fmt"
)
func main() {
  var l, r uint64
  fmt.Scan(&l, &r)
  var result uint64
  result = 0
  if r - l < 2018 {
    result = l*(l+1)%2019
    var i uint64
    for i = l+1; i < r; i++ {
      num := i*(i+1)%2019
      if num < result {
        result = num
      }
    }
  }
  fmt.Println(result)
}