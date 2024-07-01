package main

import (
  "fmt"
)

func main() {
  var (
    a,b,sum int
  )

  fmt.Scan(&a,&b)

  if a>b {
    sum = a * 2 - 1
  } else if a == b {
    sum = a * 2
  } else {
    sum = b * 2 -1
  }
  fmt.Println(sum)
}
