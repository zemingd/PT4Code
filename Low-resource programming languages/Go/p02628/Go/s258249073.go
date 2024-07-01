package main

import (
	"fmt"
	"sort"
)

func main() {
	var n, k int
	fmt.Scan(&n, &k)
	ps := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&ps[i])
	}
	sort.Ints(ps)

	ans := 0
	for i := 0; i < k; i++ {
		ans += ps[i]
	}
	fmt.Println(ans)
}
