package main
import (
  "container/list"
  "fmt"
  "os"
)
func main() {
  var n,k,r,m,t int
  var s string
  var a []int
  fmt.Scan(&n,&k)
  fmt.Scan(&s)
  a = make([]int,n)
  r = 1
  if s[0:1] == "0" { r = -1 }
  a[0] = r
  p2n := list.New()
  n2p := list.New()
  for i:=1;i<n;i++ {
    if s[i:i+1] == s[i-1:i] {
      a[i] = a[i-1] + r
    } else {
      if r > 0 {
        p2n.PushBack(i-1)
      } else {
        n2p.PushBack(i-1)
      }
      r = -r
      a[i] = r
    }
  }
  if a[n-1] > 0 {
    p2n.PushBack(n-1)
  } else {
    n2p.PushBack(n-1)
  }
  if p2n.Len() == 0 || n2p.Len() == 0 {
    fmt.Println(abs(a[n-1]))
    os.Exit(0)
  }
  used_p2n := list.New()
  used_n2p := list.New()
  t = 0
  if p2n.Len() == n2p.Len() && a[n-1] > 0 ||
  p2n.Len() != n2p.Len() && a[n-1] < 0 {
    j,_ := n2p.Remove(n2p.Front()).(int)
    t -= a[j]
    k--
    used_n2p.PushBack(j)
  }
  j,_ := p2n.Remove(p2n.Front()).(int)
  t += a[j]
  used_p2n.PushBack(j)
  for c:=0;c<k;c++ {
    if n2p.Len() == 0 { break }
    y,_ := n2p.Remove(n2p.Front()).(int)
    t -= a[y]
    used_n2p.PushBack(y)
    if p2n.Len() == 0 { break }
    x,_ := p2n.Remove(p2n.Front()).(int)
    t += a[x]
    used_p2n.PushBack(x)
  }
  m = t
  for {
    if n2p.Len() == 0 { break }
    y,_ := n2p.Remove(n2p.Front()).(int)
    t -= a[y]
    used_n2p.PushBack(y)
    p,_ := used_p2n.Remove(used_p2n.Front()).(int)
    q,_ := used_n2p.Remove(used_n2p.Front()).(int)
    t += -a[p]+a[q]
    if m < t { m = t }
    if p2n.Len() == 0 { break }
    x,_ := p2n.Remove(p2n.Front()).(int)
    t += a[x]
    used_p2n.PushBack(x)
    if m < t { m = t }
  }
  fmt.Println(m)
}
func abs(n int) int {
  if n < 0 { return -n }
  return n
}