package main

import "fmt"

func slove(a int, b int, k int) bool {
  for i:=1; k*i<=b; i++ {
    if a <= k*i {
      return true
    }
  }
  return false
}

func main() {
  var k, a, b int
  fmt.Scan(&k)
  fmt.Scan(&a)
  fmt.Scan(&b)
  
  if slove(a, b, k) {
    fmt.Println("OK")
  } else {
    fmt.Println("NG")
  }
}