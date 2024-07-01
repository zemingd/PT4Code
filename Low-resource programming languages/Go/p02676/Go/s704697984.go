package main

import (
  "fmt"
)

func main() {
  var k, sLen int
  var s string
  fmt.Scanf("%d", &k)
  fmt.Scanf("%s", &s)
  sLen = len(s)

  if sLen <= k {
    fmt.Println(s)
  } else  {
    ans := fmt.Sprint(s[:k], "...")
    fmt.Println(ans)
  }
}
