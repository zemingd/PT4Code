package main

import (
  "fmt"
  "math"
)

func main() {
  var r int

  fmt.Scanf("%d", &r)

  ans := createAnswer(r)
  fmt.Println(ans)
}

/**
**/
func createAnswer(r int) (ans float64) {
  pi := math.Pi
  ans = float64(2) * float64(r) * pi

  return ans

}