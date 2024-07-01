package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Scan()
	var N, T int
	fmt.Sscanf(scanner.Text(), "%d %d", &N, &T)

	cs := make([]int, N)
	ts := make([]int, N)
	for i := 0; i < N; i++ {
		scanner.Scan()
		fmt.Sscanf(scanner.Text(), "%d %d", &cs[i], &ts[i])
	}

	ans := math.MaxInt64
	for i := 0; i < N; i++ {
		if ts[i] <= T {
			ans = min(ans, cs[i])
		}
	}

	if ans == math.MaxInt64 {
		fmt.Println("TLE")
	} else {
		fmt.Println(ans)
	}
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
