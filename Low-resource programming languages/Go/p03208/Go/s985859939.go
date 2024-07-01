package main

import (
	"fmt"
	"sort"
)

func main() {
	var n, k int
	fmt.Scan(&n, &k)
	li := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&li[i])
	}
	sort.Ints(li)
	ans := 1000000001
	for i := 0; i <= n-k; i++ {
		if li[i+k-1]-li[i] == 0 {
			fmt.Println(0)
			return
		}
		if li[i+k-1]-li[i] < ans {
			ans = li[i+k-1] - li[i]
		}
	}
	fmt.Println(ans)
}