package main

import (
  "fmt"
)

func kaibun(str string) bool {
  N := len(str)
  h := int(N / 2)
  for i := 0; i < h; i++ {
    c0, c1 := str[i], str[N-i-1]
    if c0 != c1 {
      return false
    }
  }
  return true
}

func main() {
  var str string
  fmt.Scanf("%s\n", &str)
  
  if !kaibun(str) {
    fmt.Println("No")
    return
  }
  
  if !kaibun(str[:(len(str)-1)/2]) {
    fmt.Println("No")
    return
  }
  
  fmt.Println("Yes")
}