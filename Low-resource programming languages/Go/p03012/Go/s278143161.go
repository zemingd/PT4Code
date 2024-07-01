package main

import (
	"fmt"
	"math"
)

func main() {
	var N int
	fmt.Scan(&N)
	W := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scan(&W[i])
	}

	ans := 99999
	for t := 1; t < N; t++ {
		l, r := 0, 0
		for i := 0; i < N; i++ {
			if i < t {
				l += W[i]
			} else {
				r += W[i]
			}
		}

		d := math.Abs(float64(r - l))
		ans = int(math.Min(float64(ans), d))
	}
	fmt.Println(ans)
}
