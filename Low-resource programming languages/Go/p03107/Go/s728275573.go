package main
import (
  "fmt"
  "strings"
)
func main() {
  var s,t,u string
  var m int
  fmt.Scan(&s)
  t = s
  for {
    u = t
    u = strings.Replace(u,"0101","",-1)
    u = strings.Replace(u,"1010","",-1)
    u = strings.Replace(u,"0110","",-1)
    u = strings.Replace(u,"1001","",-1)
    u = strings.Replace(u,"1100","",-1)
    u = strings.Replace(u,"0011","",-1)
    u = strings.Replace(u,"01","",-1)
    u = strings.Replace(u,"10","",-1)
    if t == u { break }
    t = u
  }
  m = len(s)-len(t)
  fmt.Println(m)
}