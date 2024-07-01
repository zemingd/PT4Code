package main

import (
  "fmt"
  "strconv"
)

func main() {
  var a, b string
  fmt.Scan(&a, &b)

  j, _ := strconv.Atoi(b)

  aNum := a
  for i := 1; i < j; i++ {
    a += aNum
  }

  bNum := b
  k, _ := strconv.Atoi(aNum)
  for i := 1; i < k; i++ {
    b += bNum
  }

  if a > b {
    fmt.Println(b)
  } else {
    fmt.Println(a)
  }
}