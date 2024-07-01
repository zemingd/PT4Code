package main

import (
  "fmt"
  "time"
)

func main() {
  var S string
  
  fmt.Scan(&S)

  eot, _ := time.Parse("2006/01/02", "2019/04/30") 
  
  t, err := time.Parse("2006/01/02", S)
  if err != nil || t.Sub(eot) > 0 {
    fmt.Println("TBD")
  } else {
    fmt.Println("Heisei")
  }
}