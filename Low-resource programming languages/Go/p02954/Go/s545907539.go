package main

import (
  "fmt"
)

var ans = [1e5]int{}
func main() {
  var s string
  fmt.Scan(&s)
  var n,p int
  last := 'R'
  for i := 0; i < len(s)-1; i++ {
    if last == 'R' && s[i] == 'L' {
      ans[i-1] += (n+1)/2 
      ans[i] += n/2
      p = i
      n=0
    } else if last == 'L' && s[i] == 'R' {
      ans[p-1] += n/2
      ans[p] += (n+1)/2
      n=0
    }
    n++
    last = rune(s[i])
    
    if i == len(s)-1 && last == 'L' {
      ans[p-1] += n/2
      ans[p] += (n+1)/2
    }    
  }
  for i := 0; i < len(s); i++ {
    fmt.Printf("%d ", ans[i])
  }
}
  