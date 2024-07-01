package main

import(
  "fmt"
  "math"
)

func main() {
  var n int
  fmt.Scan(&n)
  var t1, t2, x1, x2, y1, y2 float64
  for i := 0; i < n; i++ {
    fmt.Scan(&t2, &x2, &y2)
    distance := math.Sqrt(math.Pow(x2-x1, 2) + math.Pow(y2-y1, 2))
    if distance / (t2 -t1) > math.Sqrt2 {
      fmt.Println("No")
      return
    }
    if int(math.Abs(t2 - t1)) % 2 ==0{
      if int(math.Abs(x2 - x1) + math.Abs(y2 - y1)) % 2 != 0 {
      fmt.Println("No")
      return
      }
    }
    if int(math.Abs(t2 - t1)) % 2 !=0{
      if int(math.Abs(x2 - x1) + math.Abs(y2 - y1)) % 2 == 0 {
      fmt.Println("No")
      return
      }
    }
    t1, x1, y1 = t2, x2, y2
  }
    fmt.Println("Yes")
}
