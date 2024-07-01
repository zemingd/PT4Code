package main
import (
  "fmt"
  "math"
)

func main() {
  var n int
  fmt.Scanf("%d", &n)

  backet := make([]int, n)
  for i := 0; i < n; i++ {
    var a int
    fmt.Scanf("%d", &a)
    backet[a]++
  }

  check := n % 2 == 0 || backet[0] == 1
  for i := n % 2 + 1; i < n; i+=2 {
    check = check && backet[i] == 2
  }
  if check {
    fmt.Println((int64)(math.Pow(2, (float64)(n/2))) % 1000000007)
  } else {
    fmt.Println(0)
  }
}
