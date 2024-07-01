package main

import (
	"bufio"
	"fmt"
	"os"
)

type Range struct {
	L, R int
}

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	var N, M, Q int
	scanner.Scan()
	fmt.Sscanf(scanner.Text(), "%d %d %d", &N, &M, &Q)

	dp := make(map[Range]int)
	for i := 0; i < M; i++ {
		var L, R int
		scanner.Scan()
		fmt.Sscanf(scanner.Text(), "%d %d", &L, &R)
		dp[Range{L, R}]++
	}

	for i := 1; i <= N; i++ {
		t := Range{1, i}
		for t.R <= N {
			dp[t] = dp[t] +
				dp[Range{t.L, t.R - 1}] +
				dp[Range{t.L + 1, t.R}] -
				dp[Range{t.L + 1, t.R - 1}]
			t.L++
			t.R++
		}
	}

	for Q > 0 {
		Q--
		var p, q int
		scanner.Scan()
		fmt.Sscanf(scanner.Text(), "%d %d", &p, &q)
		fmt.Println(dp[Range{p, q}])
	}

}
