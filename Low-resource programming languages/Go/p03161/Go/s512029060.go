package main

import (
	"fmt"
)

// A - Frog 1
// https://atcoder.jp/contests/dp/tasks/dp_a

func Abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}

func main() {
	var n, k int
	fmt.Scanf("%d %d", &n, &k)
	h := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scanf("%d", &h[i])
	}

	var dp = make([]int, n)
	dp[0] = 0
	var tmp int
	for i := 1; i < n; i++ {
		var num = i - k
		if num < 0 {
			num = 0
		}
		for j := 1; j <= num; j++ {
			if j == 1 {
				dp[i] = dp[i-j] + Abs(h[i]-h[i-j])
			} else {
				tmp = dp[j] + Abs(h[i]-h[i-j])
				if tmp < dp[i] {
					dp[i] = tmp
				}
			}
		}
	}
	fmt.Printf("%d\n", dp[n-1])
}
