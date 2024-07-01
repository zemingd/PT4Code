package main

import "fmt"

func main() {
  var s string
  fmt.Scan(&s)
  count := 0
  for _, r := range s {
    if r == '1' {
      count++
    }
  }
  fmt.Println(count)
}
