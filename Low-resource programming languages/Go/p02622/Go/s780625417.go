package main

import "fmt"

func main() {

  var s string
  var t string
  var c int

  fmt.Scan(&s)
  fmt.Scan(&t)

  num := len(s)

  for i := 0; i < num; i++ {
    if s[i] != t[i] {
      c += 1
    }
  }

  fmt.Println(c)
  
}