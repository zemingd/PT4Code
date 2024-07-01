package main
import . "fmt"
func main() {
  var n,d int
  var m map[int]struct{}
  Scan(&n)
  m = make(map[int]struct{},n)
  for i:=0;i<n;i++ {
    Scan(&d)
    m[d] = struct{}{}
  }
  Println(len(m))
}