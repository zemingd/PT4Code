package main

import "fmt"

func main() {
  var s, t string
  fmt.Scan(&s, &t)

  count := 0
  for i:=0; i<3; i++ {
    if s[i] == t[i] {
      count++
    }
  }

  fmt.Println(count)
}
