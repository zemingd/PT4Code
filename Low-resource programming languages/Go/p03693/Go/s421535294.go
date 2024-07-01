package main
import (
  "fmt"
)

func main() {
  var r, g, b int
  fmt.Scan(&r, &g, &b)
  res := r * 100 + g * 10 + b
  if res % 4 == 0 {
    fmt.Println("YES")
  } else {
    fmt.Println("NO")
  }
}

