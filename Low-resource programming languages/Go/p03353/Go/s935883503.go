package main
import (
  "fmt"
  "sort"
)

func main() {
  var s string
  fmt.Scan(&s)
  var k int
  fmt.Scan(&k)
  arr := make([]string, 0, 10000000)
  m := make(map[string]bool)
  for i := 0; i < len(s); i++ {
    for j := i+1; j <= len(s); j++ {
      if k < j-i {
        continue
      }
      str := s[i:j]
      if m[str] {
        continue
      }
      m[str] = true
      arr = append(arr, s[i:j])
    }
  }
  sort.Strings(arr)
  result := arr[k-1]
  fmt.Println(result)
  
}