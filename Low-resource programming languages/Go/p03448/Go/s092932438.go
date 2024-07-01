package main

import "fmt"

func main() {
  var a, b, c, x int
  fmt.Scan(&a, &b, &c, &x)
  ap, bp, cp := 500, 100, 50
  count := 0
  for ai := 0; ai <= a; ai++ {
    for bi := 0; bi <= b; bi++ {
      for ci := 0; ci <= c; ci++ {
        if ap*ai+bp*bi+cp*ci == x {
          count++
        }
      }
    }
  }
  fmt.Println(count)
}
