package main

import (
  "fmt"
)

func main() {
  var n int
  fmt.Scan(&n)
  
  count_ac := 0
  count_wa := 0
  count_tle := 0 
  count_re := 0
  
  var a string
  
  for i := 0; i < n; i++ {
    fmt.Scan(&a)
    
    if a == "AC" {
      count_ac += 1
    } else if a == "WA" {
      count_wa += 1
    } else if a == "TLE" {
      count_tle += 1
    } else if a == "RE" {
      count_re += 1
    }
  }
  fmt.Printf("AC × %d\n", count_ac)
  fmt.Printf("WA × %d\n", count_wa)
  fmt.Printf("TLE × %d\n", count_tle)
  fmt.Printf("RE × %d\n", count_re)
}