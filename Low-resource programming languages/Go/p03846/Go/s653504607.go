package main
import (
  "fmt"
  "sort"
)
func main() {
  var n int
  fmt.Scan(&n)
  as := make([]int, n)
  for i := 0; i < n; i++ {
    fmt.Scan(&as[i])
  }
  sort.Ints(as)
  var result uint64
  result = (1 << uint(n/2)) % 100000007
  if n%2 == 0 {
    for i, a := range as {
      if a != (i/2)*2+1 {
        result = 0
        break
      }
    }
  } else {
    for i, a := range as {
      if i == 0 && a != 0 {
        result = 0
        break
      }
      if a != ((i+1)/2)*2 {
        result = 0
        break
      }
    }
  }
  fmt.Println(result)  
}