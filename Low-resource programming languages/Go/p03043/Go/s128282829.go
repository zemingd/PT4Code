package main

import (
	"fmt"
)

func main() {
	var n, k int
	fmt.Scan(&n, &k)

	ans := 0.0
	cnt := 0.0
	for i := 1; i <= n; i++ {
		score := i
		for score < k {
			score *= 2
			cnt++
		}
		cal := 1.0 / float64(n)
		ans += cal * 0.5
	}
	fmt.Print(ans)
}
