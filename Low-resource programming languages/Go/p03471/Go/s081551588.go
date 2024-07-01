package main

import "fmt"

func main() {
  var n, y int
  fmt.Scan(&n, &y)
  m, g, s := 10000, 5000, 1000
  for mi := 0; mi <= n; mi++ {
    o := n - mi
    for gi := 0; gi <= o; gi++ {
      si := o - gi
      if y == m*mi+g*gi+s*si {
        fmt.Println(mi, gi, si)
        return
      }
    }
  }
  fmt.Println(-1, -1, -1)
}