package main
import "fmt"
func main() {
  var n int64
  var a []int64 = make([]int64,5)
  var m,t,k int64
  fmt.Scan(&n,&a[0],&a[1],&a[2],&a[3],&a[4])
  m = ceil(n,a[0])
  for i:=1;i<5;i++ {
    if a[i] >= a[i-1] {
      m++
      a[i] = a[i-1]
      continue
    }
    t = ceil(n,a[i-1])
    k = n-(t-1)*a[i]
    m += ceil(k,a[i])
  }
  fmt.Println(m)
}
func ceil(n int64,m int64) int64 {
  if n%m == 0 { return n/m }
  return n/m + 1
}