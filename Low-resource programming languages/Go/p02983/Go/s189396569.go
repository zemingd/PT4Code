package main
import (
  "fmt"
)
func main() {
  var l, r uint64
  fmt.Scan(&l, &r)
  var result uint64
  if 672 <= r-l {
    result = 0
  } else {
    result = 2019
    var i uint64
    for i = l; i < r; i++ {
      var j uint64
      for j = i+1; j <= r; j++ {
        num := i*j%2019
        if num < result {
          result = num
        }
        if result == 0 {
          break
        }
      }
    } 
  }
  fmt.Println(result)
}