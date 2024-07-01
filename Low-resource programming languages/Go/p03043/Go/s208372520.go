package main

import (
	"fmt"
)

func main() {
	var n, k int
	fmt.Scan(&n, &k)

	ans := 0.0
	for i := 1; i <= n; i++ {
		score := i
		cal := 1.0 / float64(n)
		for score < k {
			score *= 2
			cal *= 0.5
		}
		ans = cal
	}
	fmt.Print(ans)
}
