package main

import "fmt"

func main() {
  var N,sum int
  fmt.Scan(&N)
  d := make([]int, N)
  for i := range d {
    fmt.Scan(&d[i])
  }
  for a := 0; a < N; a++{
    for b := a+1; b < N; b++{
      sum += d[a]*d[b]
    }
  }
  fmt.Println(sum)
}
