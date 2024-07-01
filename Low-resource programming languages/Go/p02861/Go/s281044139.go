package main

import (
  "fmt"
  "math"
)

func main() {
    var n, l int
	fmt.Scan(&n)
 
	x := make([]int, n)
	y := make([]int, n)
 
	for i := 0; i < n; i++ {
		fmt.Scan(&x[i], &y[i])
    }
    for i := 0; i < (n - 1); i++ {
      for j := (i + 1); j < n; j++ {
        l += math.Sqrt(float64((x[i] - x[j]) * (x[i] - x[j])) + ((y[i] - y[j]) * (y[i] - y[j])))
      }
    }
    fmt.Println((l * (n -1)) * 2 / (n * (n -1))) 
    }