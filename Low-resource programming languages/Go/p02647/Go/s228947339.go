package main

import (
	"fmt"
)

func main() {
	var n, k int
	fmt.Scan(&n, &k)
	a := make([]int, n)
	for i := 0; i < n; i += 1 {
		fmt.Scan(&a[i])
	}

	for i := 0; i < k; i += 1 {
		a = f(a, n)
	}

	for i := 0; i < n; i += 1 {
		fmt.Printf("%d", a[i])
		if i + 1 < n {
			fmt.Print(" ")
		}
	}
}

func f(a []int, n int)[]int {
	result := make([]int, 0, n)
	for x := 0; x < n; x += 1 {
		b := 0
		for j := 0; j < n; j += 1 {
			d := float64(a[j])
			if (float64(j) - d - 0.5) <= float64(x) && float64(x) <= (float64(j) + d + 0.5) {
				b += 1
			}
		}
		result = append(result, b)
	}
	return result
}
