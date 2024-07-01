package main

import (
	"fmt"
	"math"
)

func abs(a int) int {
	if a >= 0 {
		return a
	}
	return -a
}
func min(a, b int) int {
	if a >= b {
		return b
	}
	return a
}

func main() {
	var n, l int
	fmt.Scan(&n, &l)
	a := make([]int, n)
	sum := 0
	for i := range a {
		a[i] = l + i
		sum += a[i]
	}
	ans := math.MaxInt32
	var b int
	for i := 0; i < n; i++ {
		t := 0
		for j := 0; j < n; j++ {
			if i != j {
				t += a[j]
			}
		}
		d := abs(sum - t)
		if ans > d {
			ans = d
			b = i
		}
	}
	fmt.Println(sum - a[b])
}
