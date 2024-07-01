// b.go
package main

import (
	"fmt"
)

func abs(a float64) float64 {
	if a > 0 {
		return a
	}
	return -a
}

func average(t, x float64) float64 {
	return t - x*0.006
}

func main() {
	var (
		n       int
		t, a, h float64
	)
	fmt.Scanln(&n)
	fmt.Scanln(&t, &a)
	min := 100000000.0
	ans := 0
	for i := 0; i < n; i++ {
		fmt.Scan(&h)
		d := abs(average(t, h) - a)
		if d < min {
			min = d
			ans = i
		}
	}
	fmt.Println(ans + 1)
}
