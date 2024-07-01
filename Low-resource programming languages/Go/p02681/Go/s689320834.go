package main

import(
"fmt"
)

func main() {
  var s string
  var t string
  fmt.Scan(&s,&t)
  
  length := len(s)
  if s[0:length] == t[0:len(t)-1] {
    fmt.Println("Yes")
 }else{
    fmt.Println("No")
 }
}
