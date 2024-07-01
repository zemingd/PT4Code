package main

import "fmt"

func main() {
  var a, b int
  var ans int

  fmt.Scan(&a, &b)

  if b == 1 {
    ans = 0
  } else {
    ans = (b-1+a-2) / (a-1)
  }
  fmt.Println(ans)
}