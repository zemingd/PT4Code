package main

import (
  "fmt"
  "strings"
)

func main() {
  var t string
  fmt.Scanf("%s", &t)
  t2 := strings.Replace(t, "?", "D", -1)

  d := strings.Replace(t2, "P", "", -1)
  
  
  pd1 := strings.Replace(t2, "PD", "?", -1)
  pd2 := strings.Replace(pd1, "P", "", -1)
  pd3 := strings.Replace(pd2, "D", "", -1)
  
  fmt.Println(len(d)+len(pd3))
  
}