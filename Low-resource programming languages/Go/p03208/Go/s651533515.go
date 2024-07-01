package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
)

var sc = bufio.NewScanner(os.Stdin)

func solve(K int, h []int) int {
	sort.Ints(h)

	k := K - 1

	minDiff := 1000000000
	for i := 0; i < len(h)-k; i++ {
		diff := h[i+k] - h[i]
		if diff < minDiff {
			minDiff = diff
		}
	}

	return minDiff
}

func main() {
	var N, K int
	fmt.Scan(&N)
	fmt.Scan(&K)

	nums := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scanln(&nums[i])
	}
	fmt.Println(solve(K, nums))
}
