package main
import (
  "fmt"
  "strings"
)
func main() {
  var s string
  fmt.Scan(&s)
  s = reverse(s)
  for ;len(s)>0; {
    if len(s) < 5 { break }
    if s[0:5] == "maerd" {
      s = s[5:]
      continue
    }
    if s[0:5] == "esare" {
      s = s[5:]
      continue
    }
    if len(s) < 6 { break }
    if s[0:6] == "resare" {
      s = s[6:]
      continue
    }
    if len(s) < 7 { break }
    if s[0:7] == "remaerd" {
      s = s[7:]
      continue
    }
    break
  }
  if len(s) > 0 {
    fmt.Println("NO")
  } else {
    fmt.Println("YES")
  }
}
func reverse(s string) string {
  var n int = len(s)
  var t []string = make([]string,n)
  for i:=0;i<n;i++ {
    t[i] = s[n-1-i:n-i]
  }
  return strings.Join(t,"")
}