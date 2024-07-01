package main

import (
	"fmt"
	"math"
)

func main() {
	var N int
	fmt.Scan(&N)
	W := make([]int, N)
	sum := 0
	for i := 0; i < N; i++ {
		fmt.Scan(&W[i])
		sum += W[i]
	}

	ans := sum
	p := 0
	for i := 0; i < N; i++ {
		p += W[i]
		ans = int(math.Min(
			float64(ans),
			math.Abs(float64(p-(sum-p))),
		))
	}
	fmt.Println(ans)
}
