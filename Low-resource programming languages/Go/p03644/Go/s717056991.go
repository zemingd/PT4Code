package main

import (
  "fmt"
)
func main() {
  var N int
  fmt.Scan(&N)

  ans := 1
  for ans * 2 <= N {
   ans *= 2
   fmt.Println(ans)
  }
  fmt.Println(ans)
}