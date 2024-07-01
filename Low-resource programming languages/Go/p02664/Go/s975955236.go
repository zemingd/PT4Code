package main

import "fmt"

func main() {
  var s string
  fmt.Scan(&s)
  ans := []rune{}
  for i:=0;i<len(s);i++{
    if s[i] == '?' {
      if i == len(s)-1 {
        ans = append(ans,'D')
      } else if s[i+1] == '?' {
        ans = append(ans, 'P')
        ans = append(ans, 'D')
        i++
      }
        else if s[i+1] == 'D' {
        ans = append(ans,'P')
      } else if s[i+1] == 'P'{
        ans = append(ans,'D')
      }
    } else {
    ans = append(ans, r)
    }
  }
  fmt.Println(s)
}