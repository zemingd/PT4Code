package main
import (
  "fmt"
  "math"
)

func main() {
  var N, t, x, y, t_now, x_now, y_now int
  fmt.Scan(&N)
  for i := 0; i < N; i++ {
    fmt.Scan(&t, &x, &y)
    length := int(math.Abs(float64(x-x_now))) + int(math.Abs(float64(y-y_now)))
    duration := t - t_now
    if length <= duration && (length - duration) % 2 == 0 {
      continue
    } else {
      fmt.Println("No")
      return
    }
  }
  fmt.Println("Yes")
}
