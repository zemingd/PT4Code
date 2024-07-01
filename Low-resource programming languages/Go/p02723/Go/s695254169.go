package main

import "fmt"

func main(){
  var s string
  
  fmt.Scanf("%s", &s)
  
  if s[2:3]==s[3:4] and s[4:5]==s[5:6]{
    fmt.Println("Yes")
  } else {
    "No"
  }
}