package main

import (
	"fmt"
	"math"
)

func b2i(b bool) int {
	if b {
		return 1
	}
	return 0
}

func cnt(a, b int) int {
	var cnt int = 0
	if a == 1 {
		a = 2
		cnt += 1
	}
	for b > 0 {
		b = b / a
		cnt++
	}
	return cnt - 1
}

func main() {
	var n, k int
	fmt.Scan(&n)
	fmt.Scan(&k)

	var ans float64
	for i := 1; i <= n; i++ {
		if i >= k {
			ans += 1.0 / float64(n)
			continue
		}

		win := cnt(i, k)
		ans += math.Pow(0.5, float64(win)) * (1.0 / float64(n))
	}

	fmt.Println(ans)
}