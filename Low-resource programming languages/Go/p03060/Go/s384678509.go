package main
import "fmt"
func main() {
  var n,m int
  fmt.Scan(&n)
  var v []int = make([]int,n)
  var c []int = make([]int,n)
  for i:=0;i<n;i++ { fmt.Scan(&v[i]) }
  for i:=0;i<n;i++ { fmt.Scan(&c[i]) }
  for i:=0;i<n;i++ {
    if v[i]-c[i] > 0 { m += v[i]-c[i] }
  }
  fmt.Println(m)
}