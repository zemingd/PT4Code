package main
 
import (
  "fmt"
)
 
func main() {
 
  var n int
  fmt.Scanln(&n)
  a := scanNums(n+1)
  b := scanNums(n)
  
  var result int
  var rest int
  for i:=n; i>=0; i-- {
    
    if i == 0 {
      if a[0] <= rest {
        result += a[0]
      } else {
        result += rest
      }
      break
    }
    
    if a[i] <= b[i-1] + rest {
      result += a[i]
      rest = b[i-1] + rest - a[i]
    } else {
      result += b[i-1] + rest
      rest = 0
    }
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