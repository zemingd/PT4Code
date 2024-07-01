package main

import "fmt"

func main() {
  i := 0
  fmt.Scan(&i)
  out := i * i * 3
  fmt.Print(out)
}