package main

import (
  "fmt"
)

func main() {
  var n,k int64
  fmt.Scan(&n)
  fmt.Scan(&k)
  if n!=k && k!=1 {
  fmt.Println(task(n,k))
} else {
  fmt.Println(0)
}
}

func task(n,k int64) int64 {
  var tmp int64
  for {
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
