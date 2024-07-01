package main
import (
  "fmt"
)

func main() {
  var A, B, C, X, count int
  fmt.Scan(&A, &B, &C)
  fmt.Scan(&X)
  for i := 0; i <= A; i++ {
    for j := 0; j <= B; j++ {
      tmp := X - 500 * i - 100 * j
      if tmp < 0 {
        break
      }
      if tmp / 50 <= C {
        count++;
      }
    }
  }
  fmt.Println(count)
}
