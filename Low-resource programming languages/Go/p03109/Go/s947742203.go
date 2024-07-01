package main

import (
  "fmt"
  "os"
  "strconv"
)

func main() {
  var s string
  fmt.Scan(&s)
  if y, _ := strconv.Atoi(s[:4]); y > 2019 {
    fmt.Println("TBD")
    os.Exit(0)
  }
  if m, _ := strconv.Atoi(s[5:7]); m > 4 {
    fmt.Println("TBD")
    os.Exit(0)
  }
  fmt.Println("Heisei")

}