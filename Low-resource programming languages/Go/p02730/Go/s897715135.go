package main

import (
  "fmt"
)

func main() {
  var s string="No"
  fmt.Scanf("%s", &s)
  var n int = len(s)
  var strong string
  var s1,s2 string
  var n1,n2 int
  
  if n%2==0 {
    strong="No"
    fmt.Printf("%s", strong)
    return
  }
  
  for i:=0; i<(n/2); i++{
    if s[i:i+1]== s[n-i-1:n-i] {
    	strong="Yes"      
    }else{
      	strong="No"
      continue
    }
  }
  
  s1=s[:(n-1)/2]
  n1=len(s1)

  for i:=0; i<(n1/2); i++{
    if s1[i:i+1]== s1[n1-i-1:n1-i] {
    	strong="Yes"      
    }else{
      	strong="No"
      continue
    }
  }

  s2=s[(n+3)/2-1:n]
  n2=len(s2)

  for i:=0; i<(n2/2); i++{
    if s2[i:i+1]== s2[n2-i-1:n2-i] {
    	strong="Yes"      
    }else{
      	strong="No"
      continue
    }
  }
  
  fmt.Printf("%s", strong)
}