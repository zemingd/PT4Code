package main
import (
  "fmt"
)
func main() {
  var n int
  fmt.Scan(&n)
  var result int
  if n < 105 {
    result = 0
  } else {
    result = 1
    for i := 106; i <= n; i++ {
      if i%2 == 0 {
        continue
      }
      num := 0
      for j := 1; j <= i; j++ {
        if i%j == 0 {
          num++
        }
      }
      if num == 8 {
        result++
      }
    }
  }
  fmt.Println(result)
}