package main
import . "fmt"
import "sort"
func main() {
  var s string
  var k,n int
  var t []string
  var m []int
  Scan(&s)
  Scan(&k)
  n = len(s)
  m = make([]int,n)
  for i:=0;i<n;i++ {
    m[i] = int(s[i:i+1][0])-97
  }
  set := make(map[string]struct{})
  for j:=0;j<26;j++ {
    for i:=0;i<n;i++ {
      if m[i] == j {
        for p:=i+1;p<=n;p++ {
          set[s[i:p]] = struct{}{}
        }
      }
    }
    if len(set) >= k { break }
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