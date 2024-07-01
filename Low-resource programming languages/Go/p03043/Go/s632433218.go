package main

import (
	"fmt"
)

func main() {
	var n, k int
	fmt.Scan(&n)
	fmt.Scan(&k)

	var ans, prob float64
	ans = 0

	for i := 1; i <= n; i++ {
		prob = 1.0 / float64(n)
		now := i
		for now < k {
			now *= 2
			prob /= 2
		}
		ans += prob
	}

	fmt.Println(ans)
}
