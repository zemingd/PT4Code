package main

import (
  "fmt"
)

func main() {
  var s string
  fmt.Scanf("%s", &s)
  
  ans := ""
  for _, v := range s {
    if v != 'B'{
      ans += string(v)
    }else{
      if len(ans) == 0 {
        continue
      }
      ans = ans[0:len(ans)-1]
    }
  }
  
  fmt.Printf("%s", ans)
}