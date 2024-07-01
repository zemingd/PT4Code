package main

import (
  "fmt"
  "strconv"
)

func main() {
  var s string
  fmt.Scanf("%s", &s)
  count := 0
  if len(s) > 3 {
    var v int
    for i := 0; i < len(s) - 3; i++ {
      for j := i + 3; j < len(s); j++ {
        v, _ = strconv.Atoi(s[i:j+1])
        if v % 2019 == 0 {
          count++ 
        }
      }
    }
  }
  fmt.Println(count)
}