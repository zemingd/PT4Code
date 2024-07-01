package main

import(
  "fmt"
)

func main() {
  var s, t string
  fmt.Scan(&s, &t)
  cnt := 0
  if s[0] == t[0] {
    cnt++
  }
  if s[1] == t[1] {
    cnt++
  }
  if s[2] == t[2] {
    cnt++
  }
  fmt.Prinln(cnt)
}
