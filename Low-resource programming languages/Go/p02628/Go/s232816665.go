package main

import (
	"fmt"
	"sort"
)

func main() {
	var n, k, pp, ans int
	var p []int
	fmt.Scan(&n, &k)
	for i := 0; i < n; i++ {
		fmt.Scan(&pp)
		p = append(p, pp)
	}
	sort.Slice(p, func(i, j int) bool {
		return p[i] < p[j]
	})
	for i := 0; i < k; i++ {
		ans += p[i]
	}
	fmt.Println(ans)

}
