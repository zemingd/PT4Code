package main

import "fmt"

func main() {
  var n int
  var h []int64
  fmt.Scan(&n)

  for i := 0; i < n; i++ {
    var t int64
    fmt.Scan(&t)
    h = append(h, t)
  }

  for i := 1; i < n; i++ {
    cur := h[n-i-1]
    prev := h[n-i]
    if cur - prev > 1 {
      fmt.Println("No")
      return
    } else if cur - prev == 1 {
      h[n-i-1]--
    }
  }
  fmt.Println("Yes")
}
