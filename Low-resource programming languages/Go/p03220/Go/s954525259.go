package main

import (
	"fmt"
	"math"
)

func main() {
	var n int
	var t, a float64
	fmt.Scan(&n, &t, &a)
	hs := make([]float64, n)
	for i, _ := range hs {
		fmt.Scan(&hs[i])
	}

	min := float64(10000)
	ans := 0
	for i, h := range hs {
		diff := math.Abs(a - (t - h*0.006))
		if min > diff {
			min = diff
			ans = i
		}
	}
	fmt.Println(ans + 1)
}
