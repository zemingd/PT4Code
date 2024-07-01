// ProblemURL : https://atcoder.jp/contests/abc129/tasks/abc129_b
// ---------------------------------------------
package main

import "fmt"

const inf = 1 << 60

func diff(a, b int) int {
	if a > b {
		return a - b
	}
	return b - a
}
func chmin(a *int, b int) bool {
	if *a > b {
		*a = b
		return true
	}
	return false
}

func main() {
	var n int
	fmt.Scan(&n)
	w := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&w[i])
	}

	c := make([]int, n+1)
	for i := 0; i < n; i++ {
		c[i+1] = c[i] + w[i]
	}

	minDiff := inf
	for i := 1; i <= n; i++ {
		sumL := c[i] - c[0]
		sumR := c[n] - c[i]
		chmin(&minDiff, diff(sumL, sumR))
	}
	fmt.Println(minDiff)
}
