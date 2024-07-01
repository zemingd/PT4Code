package main

import (
	"fmt"
)

func main() {
	var k, n int
	fmt.Scanf("%d %d", &k, &n)

	a := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scanf("%d", &a[i])
	}
	aPlus := append(a, k+a[0])

	distances := make([]int, n)
	for i := 0; i < n; i++ {
		distances[i] = aPlus[i+1] - aPlus[i]
	}

	maxDistance := distances[0]
	for _, d := range distances {
		if d > maxDistance {
			maxDistance = d
		}
	}

	answer := k - maxDistance
	fmt.Printf("%d\n", answer)
}
