package main

import(
"fmt"
)

func main() {
  var s string
  var t string
  fmt.Scan(&s,&t)
  
  length := len(s)
 if s[0:length-1] == t[0:length-1] {
    fmt.Println("Yes")
 }else{
    fmt.Println("No")
 }
}
