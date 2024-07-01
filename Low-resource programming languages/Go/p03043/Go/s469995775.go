package main

import (
	"fmt"
)

func main() {
	var n, k int
	fmt.Scan(&n, &k)

	var ans float64
	for i := 1; i <= n; i++ {
		p := 1.0
		for j := i; j < k; j *= 2 {
			p *= 0.5
		}
		ans += p / float64(n)
	}

	fmt.Println(ans)
}
