package main

import (
  "fmt"
  "strconv"
)

var N string

func main() {
  fmt.Scanf("%s", &N)
  res := 0
  for i := range N {
    res += int(N[i] - '48')
    res %= 9
  }
  if res%9 == 0 {
    fmt.Println("Yes")
    return
  }
  fmt.Println("No")
}