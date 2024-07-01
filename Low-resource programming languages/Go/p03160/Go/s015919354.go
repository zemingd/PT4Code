package main

import (
	"fmt"
	"math"
)

var (
	n int
	h []int
	dp [][]int
	ans int
)

//func solve(idx, cost int) {
func solve(idx, cost int) int {
	if dp[idx][cost] != 0 {
	//if dp[idx][cost] != int(math.Pow(10, 5)) {
		return dp[idx][cost]
	}

	if idx == n - 1 {
		dp[idx][cost] = cost
		return cost
		//ans = int(math.Min(float64(ans), float64(cost)))
		//return
	}

	var (
		c1, c2 int
	)

	if idx == n - 2 {
		dp[idx][cost] = solve(idx + 1, cost + int(math.Abs(float64(h[idx+1]-h[idx]))))
		return dp[idx][cost]
		//return solve(idx + 1, cost + int(math.Abs(float64(h[idx+1]-h[idx]))))
		//return
	}

	// Jump to i + 1
	c1 = solve(idx + 1, cost + int(math.Abs(float64(h[idx+1]-h[idx]))))
	//solve(idx + 1, cost + int(math.Abs(float64(h[idx+1]-h[idx]))))

	// Jump to i + 2
	c2 = solve(idx + 2, cost + int(math.Abs(float64(h[idx+2]-h[idx]))))
	//solve(idx + 2, cost + int(math.Abs(float64(h[idx+2]-h[idx]))))

	dp[idx][cost] = int(math.Min(float64(c1), float64(c2)))

	return int(math.Min(float64(c1), float64(c2)))
}

func main() {
	fmt.Scan(&n)
	h = make([]int, n)
	ans = int(math.Pow(10, 10))

	for i := 0; i < n; i++ {
		fmt.Scan(&h[i])
	}

	dp = make([][]int, n)
	for i := 0; i < n; i++ {
		dp[i] = make([]int, int(math.Pow(10, 8)))
	}

	//fmt.Println(h)
	//fmt.Println(ans)

	ans = solve(0, 0)

	fmt.Println(ans)
}