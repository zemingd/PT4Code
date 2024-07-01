package main

import (
	"fmt"
)

func contain(P []int, x int) bool {
	for _, p := range P {
		if p == x {
			return true
		}
	}
	return false
}

func abs(x int) int {
	if x > 0 {
		return x
	}
	return -x
}

func main() {
	var x, n, ans int
	fmt.Scan(&x, &n)
	P := make([]int, n)
	for i := range P {
		fmt.Scan(&P[i])
	}
	diff := 200
	for i := 1; i < 102; i++ {
		if contain(P, i) {
			continue
		}
		if abs(x-i) >= diff {
			continue
		}
		diff = abs(x - i)
		ans = i
	}
	fmt.Println(ans)
