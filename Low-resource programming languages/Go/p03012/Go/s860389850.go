package main
import (
  "fmt"
  "sort"
)
func main() {
  var n int
  fmt.Scan(&n)
  w := make([]int,n)
  d := 10000000
  s1,s2 := 0,0
  for i:=0;i<n;i++ {
    fmt.Scan(&w[i])
    s2 += w[i]
  }
  sort.Ints(w)
  for i:=0;i<n;i++ {
    s1,s2 = s1+w[i],s2-w[i]
    t := abs(s2-s1)
    if d > t { d = t }
  }
  fmt.Println(d)
}
func abs(n int) int {
  if n < 0 { return -n }
  return n
}