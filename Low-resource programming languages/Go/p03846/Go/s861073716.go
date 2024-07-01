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
  isPossible := true
  if n%2 == 0 {
    for i, a := range as {
      if a != (i/2)*2+1 {
        isPossible = false
        break
      }
    }
  } else {
    for i, a := range as {
      if i == 0 && a != 0 {
		isPossible = false
        break
      }
      if a != ((i+1)/2)*2 {
        isPossible = false
        break
      }
    }
  }
  var result int
  if isPossible {
    result = 1
    for i := 0; i < n/2; i++ {
      result *= 2
      result %= 1000000007
    }
  } else {
    result = 0
  }

  fmt.Println(result)  
}