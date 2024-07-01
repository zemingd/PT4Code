package main

import (
  "fmt"
  "math"
)

func main() {
    var n int
	fmt.Scan(&n)
 
	x := make([]int, n)
	y := make([]int, n)
 
	for i := 0; i < n; i++ {
		fmt.Scan(&x[i], &y[i])
    }
  
    l := float64(0)
  
    for i := 0; i < (n - 1); i++ {
      for j := (i + 1); j < n; j++ {
        dx := float64(x[i] - x[j])
        dy := float64(y[i] - y[j])
        l += math.Sqrt(dx * dx + dy * dy)
      }
    }
    fmt.Println(int(l) * 2 / n) 
    }