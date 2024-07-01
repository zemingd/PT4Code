package main

import (
  "fmt"
)

func main() {
  var n,k int64
  fmt.Scan(&n)
  fmt.Scan(&k)
  fmt.Println(task(n,k))
}

func task(n,k int64) int64 {
  var tmp int64
  for {
    if n > 1000*k {
      n = n/1000*k
    }
    tmp = n-k
    if tmp<0 {
      tmp *= -1
    }
    if tmp<n {
      n = tmp
    } else {
      return n
    }
  }
}
