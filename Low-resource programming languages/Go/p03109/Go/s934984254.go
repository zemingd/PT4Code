package main

import (
  "fmt"
  "strconv"
)

func main() {
  var s string
  fmt.Scan(&s)
  m, _ := strconv.Atoi(s[5:7])
  d, _ := strconv.Atoi(s[8:10])
  result := "Heisei"
  if 430 < m*100+d {
    result = "TBD"
  }
  fmt.Println(result)
}