package main

import "fmt"

const inf int = 1e9

func main() {
	var n int
	fmt.Scan(&n)
	as := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&as[i])
	}

	dp := make([]int, n)
	for i := 0; i < n; i++ {
		dp[i] = inf
	}

	for i := 0; i < n; i++ {
		a := as[n-i-1]
		k := upperBound(dp, a)
		dp[k] = a
	}

	ans := 0
	for i := 0; i < n; i++ {
		if dp[i] < inf {
			ans++
		}
	}

	fmt.Println(ans)
}

func upperBound(a []int, x int) int {
	lb, ub := -1, len(a)
	for ub-lb > 1 {
		m := (lb + ub) / 2
		if a[m] <= x {
			lb = m
		} else {
			ub = m
		}
	}
	return ub
}
