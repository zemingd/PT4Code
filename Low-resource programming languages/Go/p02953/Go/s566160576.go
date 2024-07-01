package main

import (
	"fmt"
	"math"
)

func abs(a int) int {
	return int(math.Abs(float64(a)))
}

func solve(i, n int, h []int) bool {
	if i >= n-2 {
		return true
	}

	sa := h[i] - h[i+1]

	if abs(sa) >= 2 {
		return false
	}

	res := true
	if sa == -1 || sa == 1 {
		h2 := make([]int, len(h))
		copy(h2, h)
		h2[i+1] += sa
		res = solve(i+1, n, h2)
		if res {
			return true
		}
	}

	if sa == 0 {
		res = solve(i+1, n, h)
		if res {
			return true
		}

		h2 := make([]int, len(h))
		copy(h2, h)
		h2[i+1]++
		res = solve(i+1, n, h2)
		if res {
			return true
		}
	}
	return false
}

func main() {
	var n int
	fmt.Scan(&n)
	h := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&h[i])
	}

	res := solve(0, n, h)
	if res {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
