package main
import "fmt"
func main() {
  var n,x,y int
  var s string
  fmt.Scan(&n)
  fmt.Scan(&s)
  var a []int = make([]int,n+2)
  for i:=1;i<n+1;i++ {
    if s[i-1:i] == "#" {
      a[i] = 1
    }
  }
  for i:=1;i<n+2;i++ {
    a[i] = a[i] + a[i-1]
  }
  x = 2*n
  for i:=1;i<n+1;i++ {
    y = (a[i]-a[0]) + (n-i)-(a[n+1]-a[i])
    if x > y { x = y }
  }
  fmt.Println(x)
}