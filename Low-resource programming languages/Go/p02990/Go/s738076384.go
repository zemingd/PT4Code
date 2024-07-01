package main

import (
	"fmt"
)

func combination(n, r int) int {
	if r == 0 {
		return 1
	}
	return ((n - r + 1) * combination(n, r-1) / r) % (pow(10, 9) + 7)
}

func pow(a, b int) int {
	ans := 1
	for i := 0; i < b; i++ {
		ans *= a
	}
	return ans
}

func main() {
	var n, k int
	fmt.Scan(&n, &k)

	for i := 1; i <= k; i++ {
		a := combination(n-k+1, i) % (pow(10, 9) + 7)
		b := 0
		if k-i == 0 {
			b = 1
		} else {
			b = combination(k-i+1, i-1) % (pow(10, 9) + 7)
		}
		fmt.Println(a * b % (pow(10, 9) + 7))
	}
}
