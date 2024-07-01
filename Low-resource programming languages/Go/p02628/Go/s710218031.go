package main
import (
  "fmt"
  "sort"
  //"regexp"
)
 
func main(){
  var n, k, a, ans int
  fmt.Scan(&n)
  fmt.Scan(&k)
  s := make([]int, 0)
  for i := 0; i < n; i++ {
    fmt.Scan(&a)
    s = append(s, a)
  }
  sort.Slice(s, func(i, j int) bool { return s[i] < s[j] })
  for i :=0; i < k; i++ {
    ans += s[i]
  }
  fmt.Printf("%d\n", ans)
}