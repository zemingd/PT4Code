package main

import (
  "fmt"
  "sort"
  "strings"
)
func main() {
  var s, t string
  fmt.Scan(&s)
  fmt.Scan(&t)

  s1 := strings.Split(s,"")
  t1 := strings.Split(t,"")

  sort.Strings(s1)
  sort.Sort(sort.Reverse(sort.StringSlice(t1)))

  s = strings.Join(s1, "")
  t = strings.Join(t1, "")

  if s < t {
    fmt.Println("Yes")
  } else {
    fmt.Println("No")
  }
}
