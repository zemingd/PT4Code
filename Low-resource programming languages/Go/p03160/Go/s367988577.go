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
	var n int
	fmt.Scanf("%d", &n)
	h := [100000]int{}
	for i := 0; i < n; i++ {
		fmt.Scanf("%d", &h[i])
	}
	var dp = [100000]int{}
	dp[0] = 0
	dp[1] = Abs(h[1] - h[0])
	var tmp1 int
	var tmp2 int
	for i := 2; i < n; i++ {
		tmp1 = dp[i-2] + Abs(h[i]-h[i-2])
		tmp2 = dp[i-1] + Abs(h[i]-h[i-1])
		if tmp1 < tmp2 {
			dp[i] = tmp1
		} else {
			dp[i] = tmp2
		}
	}
	fmt.Printf("%d\n", dp[n-1])
}
