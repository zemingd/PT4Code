package main
import (
  "fmt"
  "strings"
)

func main() {
  var s, t string
  fmt.Scan(&s)
  r := strings.NewReplacer("0B", "", "1B", "")
  t = r.Replace(s)
  for s != t {
    s = t
    t = r.Replace(s)
  }
  fmt.Println(s)
}