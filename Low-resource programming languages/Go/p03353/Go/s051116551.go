package main
import . "fmt"
import "sort"
func main() {
  var s string
  var k,n int
  var t []string
  set := make(map[string]struct{})
  Scan(&s)
  Scan(&k)
  n = len(s)
  for i:=1;i<n+1;i++ {
    for j:=0;j<n-i+1;j++ {
      set[s[j:j+i]] = struct{}{}
    }
  }
  n = len(set)
  t = make([]string,n)
  i := 0
  for key,_ := range set {
    t[i] = key
    i++
  }
  sort.Strings(t)
  Println(t[k-1])
}