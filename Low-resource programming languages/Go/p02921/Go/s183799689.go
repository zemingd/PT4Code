package main

import "fmt"

func main() {
  var s, t string
  var ans int

  fmt.Scan(&s, &t)

  for i := 0; i < 3; i++ {
    if s[i] == t[i] { ans++ }
  }

  fmt.Println(ans)
}