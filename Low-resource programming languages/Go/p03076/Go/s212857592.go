package main

import (
  "fmt"
  "math"
)

func main() {
  A := make([]int, 5)
  for i := 0; i < 5; i++ {
    fmt.Scan(&A[i])
  }
  var (
    sum int
    min = math.MaxInt64
  )
  for _, v := range A {
    sum += v
    if mod := v % 10; mod != 0 {
      if mod < min {
        min = mod
      }
      sum += (10 - mod)
    }
  }
  fmt.Println(sum - (10 - min))
}
