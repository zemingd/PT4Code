package main

import "fmt"

func main () {
  var n int
  _, _ = fmt.Scanf("%d", &n)
  rc := (n / 2) * (n + 1)
  fmt.Println(rc)
}

