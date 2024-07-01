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
		suc := 1.0 / n
		for score < k {
			score *= 2
			suc /= 2
		}
		ans += suc
	}
	fmt.Print(ans)
}
