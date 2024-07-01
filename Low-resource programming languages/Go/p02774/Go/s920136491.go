package main
import (
  "fmt"
  "sort"
)
func main() {
  var n int
  var k,x,y,z,c int64
  fmt.Scan(&n,&k)
  a := make([]int,n)
  for i:=0;i<n;i++ { fmt.Scan(&a[i]) }
  sort.Ints(a)
  b := make([]int,n)
  for i:=0;i<n;i++ { b[i] = a[n-i-1] }
  x,z = -1e18,1e18
  for z-x > 1 {
    y = (x+z)/2
    c = 0
    for i:=0;i<n;i++ {
      t := a[i+1:]
      if a[i] < 0 { t = b[:n-i-1] }
      l,r := -1,len(t)
      for r-l > 1 {
        m := (l+r)/2
        if int64(a[i])*int64(t[m]) < y { l = m } else { r = m }
      }
      c += int64(r)
    }
    if c < k { x = y } else { z = y }
  }
  fmt.Println(x)
}