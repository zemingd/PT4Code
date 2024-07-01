package main
import . "fmt"
import "sort"
import "strings"
func main() {
  var s,t string
  var as,at []string
  Scan(&s)
  Scan(&t)
  as = strings.Split(s,"")
  at = strings.Split(t,"")
  sort.Strings(as)
  sort.Sort(sort.Reverse(sort.StringSlice(at)))
  s = strings.Join(as,"")
  t = strings.Join(at,"")
  if s < t {
    Println("Yes")
  } else {
    Println("No")
  }
}