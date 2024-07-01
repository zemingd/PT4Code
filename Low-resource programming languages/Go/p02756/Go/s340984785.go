package main

import (
  "fmt"
  "bufio"
  "os"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
  var s string
  var q int
  var t,f int
  var c string

  fmt.Scan(&s)
  fmt.Scan(&q)

  for i:=0;i<q; {
    fmt.Scan(&t)
    if t==1 {
      s = reverse(s)
      i++
    } else {
      fmt.Scan(&f)
      fmt.Scan(&c)
      if f==1 {
        s = c+s
      } else {
        s = s+c
      }
      i++
    }
  }
  fmt.Println(s)
}

func reverse(s string) string {
    rs := []rune(s)
    for i, j := 0, len(s)-1; i < j; i, j = i+1, j-1 {
        rs[i], rs[j] = rs[j], rs[i]
    }
    return string(rs)
}
