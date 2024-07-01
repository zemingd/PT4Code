package main

import (
	"fmt"
	"math"
)

func main() {
	var n int
	fmt.Scan(&n)
	
	w := make([]int,n)
	
	for i := range w {
		fmt.Scan(&w[i])
	}
	
	minAbs := 10000
	for t := 0; t < n; t++ {
		var underT,overT float64
		for i := 0; i < n; i++ {
			if i <= t {
              underT += float64(w[i])
			} else {
              overT += float64(w[i])
			}
		}
      	currentAbs := int(math.Abs(underT - overT))
		if minAbs > currentAbs {
			minAbs = currentAbs
		}
	}
	
	fmt.Println(minAbs)
}