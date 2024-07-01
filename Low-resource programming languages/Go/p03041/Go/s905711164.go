package main

import (
  "fmt"
  "strings"
)

var n, k int
var s, ans string

func main() {
  fmt.Scanf("%d%d", &n, &k)
  fmt.Scanf("%s", &s)
  k--
  for i, ch := range s {
    if i == k {
      ans += strings.ToLower(string(ch))
    } else {
      ans += string(ch)
    }
  }
  fmt.Println(ans)
}