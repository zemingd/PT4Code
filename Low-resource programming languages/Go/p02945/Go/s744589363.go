package main
 
import (
  "fmt"
)
 
func main() {
 
  d := scanNums(2)
  
  plus := d[0] + d[1]
  minus := d[0] - d[1]
  product := d[0] * d[1]
 
  var result int
  if plus >= minus {
    result = plus
  } else {
    result = minus
  }
  
  if product >= result {
    result = product
  }
  
  fmt.Print(result)
}
 
func scanNums(len int) (nums []int) {
    var num int
    for i := 0; i < len; i++ {
        fmt.Scan(&num)
        nums = append(nums, num)
    }
    return
}