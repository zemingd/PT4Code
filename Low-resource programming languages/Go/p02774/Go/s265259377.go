package main

import (
	"fmt"
	"sort"
)

func main() {
	var n, k int
	fmt.Scan(&n, &k)
	a := make([]int64, n)
	for i := range a {
		fmt.Scan(&a[i])
	}

	ans := make([]int64, 0, n*(n-1)/2)
	for i := 0; i < n-1; i++ {
		for j := i + 1; j < n; j++ {
			ans = append(ans, a[i]*a[j])
		}
	}

	sort.Slice(ans, func(i, j int) bool {
		return ans[i] < ans[j]
	})

	fmt.Println(ans[k-1])

}
