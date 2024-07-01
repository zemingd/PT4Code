package main

import "fmt"

func main() {
  var n, k, x, y, rc int
  fmt.Scan(&n)
  fmt.Scan(&k)
  fmt.Scan(&x)
  fmt.Scan(&y)
  
    for i := 1; i <= n; i++ {
        if i <= k {
            rc += x
        } else {
            rc += y
        }
    }

  fmt.Println(rc)
}