package main

import (
	"fmt"
)

func main() {
	var x, n int
	fmt.Scan(&x, &n)

	ps := make([]int, n)
	pm := make(map[int]bool)
	for i := 0; i < n; i++ {
		fmt.Scan(&ps[i])
		pm[ps[i]] = true
	}

	qs := make([]int, 0)
	for i := 0; i <= 110; i++ {
		if _, ok := pm[i]; !ok {
			qs = append(qs, i)
		}
	}

	ans := 0
	min := int(1e5)
	for i := 0; i < len(qs); i++ {
		q := qs[i]
		d := abs(x - q)
		if d < min {
			ans = q
			min = d
		}
	}

	fmt.Println(ans)
}

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}
