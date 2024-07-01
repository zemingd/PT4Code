package main

import "fmt"

func main() {
  var N int
  fmt.Scan(&N)
  sum := 0
  for n := 0; n < N; n++ {
    sum += n
  }
  fmt.Println(sum)
}