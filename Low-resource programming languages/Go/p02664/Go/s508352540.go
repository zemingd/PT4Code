package main

import "fmt"

func main() {
  var s string
  fmt.Scan(&s)
  ans := []rune{}
  for i,r := range s {
    if r == '?' {
      if i == len(s)-1 {
        ans = append(ans,'D')
      } else if s[i+1] == 'D' {
        ans = append(ans,'P')
      } else {
        ans = append(ans,'D')
      }
    } else {
    ans = append(ans, r)
    }
  }
  
  fmt.Println(string(ans))
}