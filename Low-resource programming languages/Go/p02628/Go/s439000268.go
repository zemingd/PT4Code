package main

import (
	"fmt"
	"sort"
)

func main() {
	var n, k, r int
	fmt.Scan(&n, &k)
	p := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&r)
		p[i] = r
	}
	sort.Sort(sort.IntSlice(p))

	result := 0
	for i := 0; i < k; i++ {
		result += p[i]
	}
	fmt.Println(result)
}
