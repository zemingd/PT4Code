package main

import (
  "fmt"
)

func main() {

  var a, b, c, x int

  fmt.Scan(&a, &b, &c, &x)
  
  var ans int
  for i := 0; i <= a; i++ {
    for j := 0; j <= b; j++ {
      for k := 0; k <= c; k++ {
        if (i + j + k) == x {
          result += 1
        }
      }
    }
  }
  
  fmt.Println(ans)
}