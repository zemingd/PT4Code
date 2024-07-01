package main

import (
	"fmt"
	"math"
)

func main() {
	var n, tmp, s1, s2, abs, minAbs int
	fmt.Scanf("%d", &n)
	var w []int
	w = []int{}
	for i := 0; i < n; i++ {
		fmt.Scanf("%d", &tmp)
		w = append(w, tmp)
	}
	minAbs = 100
	for i := 0; i < n; i++ {
		s1 = 0
		s2 = 0
		for j := 0; j < n; j++ {
			if j <= i {
				s1 = s1 + w[j]
			} else {
				s2 = s2 + w[j]
			}

		}
		abs = int(math.Abs(float64(s1 - s2)))
		if minAbs > abs {
			minAbs = abs
		}
	}
	fmt.Print(minAbs)
}
