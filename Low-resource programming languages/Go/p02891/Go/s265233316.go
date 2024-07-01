package main

import "fmt"

func main() {
  var s string
  var k int
  fmt.Scanf("%s", &s)
  fmt.Scanf("%d", &k)

  cnt := 0
  for i:=1;i<len(s);i++ {
    if s[i-1] == s[i] {
      cnt++
    }
  }
  fmt.Println(cnt*k)
}