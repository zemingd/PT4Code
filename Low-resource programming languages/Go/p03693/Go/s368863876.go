package main

import (
  "fmt"
  "strconv"
)

func main() {
  var i int
  var r, g, b string
  fmt.Scan(&r, &g, &b)

  rgb :=  r + g + b
  i, _ = strconv.Atoi(rgb)

  if i % 4 == 0 {
    fmt.Println("YES")
  } else {
    fmt.Println("NO")
  }
}