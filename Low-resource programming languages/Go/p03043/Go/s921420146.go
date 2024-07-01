package main

import (
	"fmt"
)

func main() {
	var n, k int
	fmt.Scan(&n)
	fmt.Scan(&k)

	m := make([]int, n + 1, n + 1)

	for i := 1; i <= n; i++ {
		for j := 1; j <= 2 * k; j *= 2 {
			if j >= k / i {
				m[i] = j
				break;
			}
		}
	}

	answer := 0.0
	for i := 1; i <= n; i++ {
		answer += 1.0 / (float64(n) * float64(m[i]))
	}
	fmt.Println(answer)
}
