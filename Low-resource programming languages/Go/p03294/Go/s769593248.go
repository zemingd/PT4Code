package main
import "fmt"
func main() {
  var n,a,s int
  fmt.Scan(&n)
  s = -n
  for i:=0;i<n;i++ {
    fmt.Scan(&a)
    s += a
  }
  fmt.Println(s)
}