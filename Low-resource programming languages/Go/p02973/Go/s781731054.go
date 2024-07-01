package main
import (
  "fmt"
)
func main() {
  var n int
  fmt.Scan(&n)
  as := make([]int, n)
  for i := 0; i < n; i++ {
    fmt.Scan(&as[i])
  }
  colors := []int{}
  for i := 0; i < n; i++ {
    a := as[i]
    var target int
    noTarget := false
    if (len(colors) == 0 || a < colors[len(colors)-1]) {
      noTarget = true
    } else {
      for j := 0; j < len(colors); j++ {
        num := colors[j]
        if num < a {
          target = j
          break
        }
        if j == len(colors)-1 {
          noTarget = true
        }
      }
    }
    if (noTarget) {
      colors = append(colors, a)
    } else {
      colors[target] = a
    }
  }
  fmt.Println(len(colors))
}