package main

import "fmt"

func main () {
  var n, rc int
  _, _ = fmt.Scanf("%d", &n)
  if n%2 == 0 {
    rc = (n / 2) * (n + 1)
  } else {
    rc = (((n - 1) / 2) * n) + n
  }
  fmt.Println(rc)
}

