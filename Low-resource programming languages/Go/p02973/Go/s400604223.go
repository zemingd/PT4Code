package main

import (
	"fmt"
	"sort"
)

func main()  {
	var n int
	fmt.Scan(&n)

	a := make([]int, n)
	for i := range a {
		fmt.Scan(&a[i])
		a[i] = -1*a[i]
	}
	dp := make([]int, n)

	for i := range dp {
		dp[i] = 10e15
	}

	for _, aa := range a {
		// dp を広義増加部分列にするため a+1 に対して lower_bound
		i := sort.SearchInts(dp, aa+1)
		dp[i] = aa
	}

	res := sort.SearchInts(dp, 10e15)

	fmt.Println(res)
}