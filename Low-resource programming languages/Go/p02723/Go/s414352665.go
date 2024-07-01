package main

import "fmt"

func main(){
  var s string
  
  fmt.Scanf("%s", &s)
  
  if s[2:3]==s[3:4] {
    if s[4:5]==s[5:6] {
    fmt.Println("Yes")
    } else {
      fmt.Println("No")
    }
  } else {
    fmt.Println("No")
  }
}