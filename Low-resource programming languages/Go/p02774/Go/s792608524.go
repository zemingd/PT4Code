package main

import (
	"fmt"
	"math"
)

func reverse(s string) string {
	if len(s) <= 1 {
		return s
	}
	rs := []rune(s)
	for i, j := 0, len(s)-1; i < j; i, j = i+1, j-1 {
		rs[i], rs[j] = rs[j], rs[i]
	}
	return string(rs)
}

func main() {
	var (
		NS string
	)

	fmt.Scanf("%s\n", &NS)
	NS = reverse(NS)
	var dp [1000002][2]uint64
	n := len(NS)
	for i := 0; i <= n; i++ {
		for j := 0; j < 2; j++ {
			dp[i][j] = uint64(math.Inf(1))
		}
	}
	dp[0][0] = 0
	for i := 0; i < n; i++ {
		for j := 0; j < 2; j++ {
			nd := int(NS[i] - '0')
			for d := 0; d < 10; d++ {
				ni, nj := i+1, 0
				a := d - nd
				if a < 0 {
					nj = 1
					a += 10
				}
				v := dp[ni][nj]
				if v > dp[i][j]+uint64(a+d) {
					v = dp[i][j] + uint64(a+d)
				}
				dp[ni][nj] = v
			}
		}
	}
	fmt.Println(dp[n][0])
}
