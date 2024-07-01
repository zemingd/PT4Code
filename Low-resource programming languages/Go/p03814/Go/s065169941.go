package main

import "fmt"

func main() {
  var s string
  start := -1
  end := -1

  fmt.Scan(&s)
  for i, _ := range s {
    if s[i:i+1] == "A" && start == -1 {
      start = i
    }
    if s[i:i+1] == "Z" {
      end = i
    }
  }
  fmt.Println(end-start+1)
}