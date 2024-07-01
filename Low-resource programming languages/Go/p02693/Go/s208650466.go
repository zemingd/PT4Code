package main

import "fmt"

func main() {
  var k int
  fmt.Scan(&k)
  var a, b int
  fmt.Scan(&a, &b)
  n := 0
  var ok bool
  for {
    n++
    l := k * n
    if l > b {
      break
    } else if l >= a && l <= b {
      ok = true
      break
    }
  }
  if ok {
    fmt.Println("OK")
  } else {
    fmt.Println("NG")
  }
}
