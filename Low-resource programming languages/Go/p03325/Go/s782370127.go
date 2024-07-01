package main
import . "fmt"
func main() {
  var n,x,y,k int
  var a []int
  Scan(&n)
  a = make([]int,n)
  for i:=0;i<n;i++ { Scan(&a[i]) }
  x,y = 0,0
  k = 2
  for j:=1;j<=29;j++ {
    for i:=0;i<n;i++ {
      if a[i]%k == 0 { x++ }
    }
    if x == y { break }
    k *= 2
    y = x
  }
  Println(x)
}