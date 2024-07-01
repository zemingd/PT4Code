package main

import "fmt"

func main() {

  var s string
  fmt.Scan(&s)
  var count = 0
  var pre = s[0]
  for i:= 1; i< len(s); i++ {
    if s[i] == pre {
      count ++
      if pre == '0' {
        pre = '1'
      }else {
         pre = '0'
      }
    } else {
      pre = s[i]
    }
  }

  fmt.Print(count)
  
}


