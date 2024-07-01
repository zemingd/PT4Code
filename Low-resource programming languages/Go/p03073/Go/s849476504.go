package main
import "fmt"
func main() {
  var s,t0,t1 string
  var n,m0,m1 int
  fmt.Scan(&s)
  n = len(s)
  t0 = ""
  t1 = ""
  for i:=0;i<(n+1)/2;i++ {
    t0 += "01"
    t1 += "10"
  }
  m0 = 0
  m1 = 0
  for i:=0;i<n;i++ {
    if s[i:i+1] != t0[i:i+1] { m0++ }
    if s[i:i+1] != t1[i:i+1] { m1++ }
  }
  fmt.Println(min(m0,m1))
}
func min(n int,m int) int {
  if n < m { return n }
  return m
}