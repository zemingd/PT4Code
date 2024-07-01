package main

import (
	"fmt"
	"sort"
)

func main() {
	var n, k int
	fmt.Scan(&n, &k)

	var a, b int
	m := make(map[int]int)
	for i := 0; i < n; i++ {
		fmt.Scan(&a, &b)
		m[a] += b
	}

	keys := make([]int, len(m))
	i := 0
	for key := range m {
		keys[i] = key
		i++
	}
	sort.Ints(keys)

	sum := 0
	for _, v := range keys {
		sum += m[v]
		if k <= sum {
			fmt.Println(v)
			return
		}
	}
}
