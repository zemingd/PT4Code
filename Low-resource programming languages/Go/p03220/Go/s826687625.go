package main

import "fmt"

func main() {
	var (
		n int
		t float64
		a float64
	)
	fmt.Scan(&n, &t, &a)

	var bestPlace int
	diffTemp := 9999999999.0
	for i := 0; i < n; i++ {
		var x float64
		fmt.Scan(&x)

		temp := t - (x * 0.006)
		if abs(a-temp) < diffTemp {
			diffTemp = abs(a - temp)
			bestPlace = i + 1
		}
	}
	fmt.Println(bestPlace)
}

func abs(n float64) float64 {
	if n < 0 {
		return -n
	}
	return n
}
