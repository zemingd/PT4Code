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

  var t, x, y int
  rectMap := make(map[int]Rect)
  for i := 1; i <= n; i += 1 {
    fmt.Scan(&t, &x, &y)
    rectMap[t] = Rect{x: x, y: y}
  }

  var nx, ny int
  for t, rect := range rectMap {
    mn := int(math.Abs(float64(rect.x - nx)) + math.Abs(float64(rect.y - ny)))
    if t < mn || ((t % 2) != (mn % 2)) {
      fmt.Println("No")
      return
    }

    nx, ny = rect.x, rect.y
  }
  fmt.Println("Yes")
}