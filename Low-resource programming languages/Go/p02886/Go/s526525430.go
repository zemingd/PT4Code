package main
 
import (
  "fmt"
)
 
func main() {
  var n int
  fmt.Scan(&n)
  d := make([]int, n)
  
  for i := range d {
    fmt.Scan(&d[i])
  }
  
  recv := 0
  for i := 0; i < n-1; i++ {
    for j := i+1; j < n; j++ {
      recv += d[i] * d[j]
    }
  }
  fmt.Println(recv)
}
