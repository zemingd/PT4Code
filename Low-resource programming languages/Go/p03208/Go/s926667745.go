package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"sort"
)

var N, K int

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Scan()

	fmt.Sscanf(scanner.Text(), "%d %d", &N, &K)

	hs := make([]int, N)
	for i := 0; i < N; i++ {
		scanner.Scan()
		fmt.Sscanf(scanner.Text(), "%d", &hs[i])
	}

	sort.Sort(sort.IntSlice(hs))

	ans := math.MaxInt64
	for i := 0; i < N-K+1; i++ {
		diff := hs[i+K-1] - hs[i]
		ans = min(ans, diff)
	}
	fmt.Println(ans)
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
