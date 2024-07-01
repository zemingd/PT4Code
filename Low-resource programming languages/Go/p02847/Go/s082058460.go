package main

import (
	"fmt"
	"math"
)

func check(a, b, x, n int) bool {
	if x >= a*n+b*int(math.Log10(float64(n))+1) {
		return true
	}
	return false
}
func buyAnInteger(a, b, x int) int {
	lo, hi := 0, 1000000000
	if check(a, b, x, hi) {
		return hi
	}
	for lo < hi-1 {
		mi := (lo + hi) / 2
		if check(a, b, x, mi) {
			lo = mi
		} else {
			hi = mi
		}
	}
	return lo
}

func main() {
	var a, b, x int
	fmt.Scan(&a, &b, &x)
	fmt.Print(buyAnInteger(a, b, x))
}
