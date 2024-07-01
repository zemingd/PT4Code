package main

import (
	"fmt"
	"os"
)

func run() int {
	var n, k int
	fmt.Scanf("%d %d\n", &n, &k)
	p := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scanf("%d", &p[i])
	}

	if k > len(p) {
		k = len(p)
	}

	prevSum := 0.0
	sums := make([]float64, k, k)
	total := 0.0
	for i := 0; i < len(p); i++ {
		sum := float64(1+p[i]) / 2.0
		if i >= k {
			total -= sums[i%k]
		}
		sums[i%k] = sum
		total += sum
		if prevSum < total {
			prevSum = total
		}
	}

	fmt.Println(prevSum)

	return 0
}

func main() {
	os.Exit(run())
}
