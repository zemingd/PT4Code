package main
 
import (
  "fmt"
)
 
func main() {
 
  var left, right int
  fmt.Scanln(&left, &right)
  
  result := 2019 * 2019
  for i:=left; i<=right-1; i++ {
    for j:=i+1; j<=right; j++ {
      current := (i % 2019) * (j % 2019)
      if current < result {
        result = current
      }
      
      // 解が 0 になった時点で探索を打ち切る
      if current == 0 {
        break
      }
    }
  }
 
  fmt.Print(result)
}