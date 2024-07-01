package main

import (
  "fmt"
  "strings"
)

func main() {
  var S string
  fmt.Scanf("%s", &S)
  
  var cnt uint
  var before string
  for i, s := strings.Sprit(S, "") {
    if i == 0 {
      before = s
      cnt++
    } else {
      if s != before {
        before = s
        cnt++
      }
    }
  }
  
  fmt.Println(cnt)
}
