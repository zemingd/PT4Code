package main
import . "fmt"
import "sort"
func main() {
  var n,l int
  var s []string
  var x string
  Scan(&n,&l)
  s = make([]string,n)
  for i:=0;i<n;i++ {
    Scan(&s[i])
  }
  sort.Strings(s)
  x = ""
  for i:=0;i<n;i++ {
    x += s[i]
  }
  Println(x)
}