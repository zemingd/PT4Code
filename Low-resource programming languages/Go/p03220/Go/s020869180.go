package main

import (
	"fmt"
)

func main() {
	var n, t, a float64
	fmt.Scan(&n, &t, &a)
	hs := make([]float64, int(n))
	var tbyh float64
	gosa := 100000000.0
	r := -1
	for i := range hs {
		fmt.Scan(&hs[i])
	}
	//hi no kion motomeru
	for i := range hs {
		tbyh = t - hs[i]*0.006
		if abs(a-tbyh) <= gosa {
			gosa = abs(a - tbyh)
			r = i + 1
		}
	}
	fmt.Println(r)
}

func abs(j float64) float64 {
	if j < 0 {
		j = -j

	}
	return j
}
