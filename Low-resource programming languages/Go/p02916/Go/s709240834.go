package main
import (
  "fmt"
)
func main() {
  var n int
  fmt.Scan(&n)
  as := make([]int, n)
  for i := 0; i < n; i++ {
    fmt.Scan(&as[i])
  }
  bs := make([]int, n)
  for i := 0; i < n; i++ {
    fmt.Scan(&bs[i])
  }
  cs := make([]int, n-1)
  for i := 0; i < n-1; i++ {
    fmt.Scan(&cs[i])
  }
  result := 0
  for i, a := range as {
    result += bs[a-1]
    if i != 0 && as[i-1] + 1 == a {
      result += cs[as[i-1]-1]
    }
  }
  fmt.Println(result)

}