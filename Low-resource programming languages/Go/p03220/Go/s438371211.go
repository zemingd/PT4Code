package main

import "fmt"

func main() {
	var N, T, A float64
	fmt.Scan(&N, &T, &A)
	idx, cur := -1, float64(1e10)
	for i := 0; i < int(N); i++ {
		var H float64
		fmt.Scan(&H)
		mean := T - H*0.006
		if abs(cur-A) >= abs(mean-A) {
			idx = i + 1
			cur = mean
		}
	}
	fmt.Println(idx)
}

func abs(x float64) float64 {
	if x < 0 {
		x *= -1
	}
	return x
}
