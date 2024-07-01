package main

import (
  "fmt"
  "math"
)

type Rect struct {
  x, y int
}

func main() {
  var n int
  fmt.Scan(&n)

  rectMap := make(map[int]Rect)
  for i := 1; i <= n; i += 1 {
    var t, x, y int
    fmt.Scan(&t, &x, &y)
    rectMap[t] = Rect{x: x, y: y}
  }

  var nt, nx, ny int
  for t, rect := range rectMap {
    s := t - nt
    mn := int(math.Abs(float64(rect.x - nx)) + math.Abs(float64(rect.y - ny)))
    if s < mn || ((s % 2) != (mn % 2)) {
      fmt.Println("No")
      return
    }

    nt, nx, ny = t, rect.x, rect.y
  }
  fmt.Println("Yes")
}