package main

import (
	"fmt"
	"sort"
)

func main() {
	var N, K int
	fmt.Scan(&N, &K)
	l := make([]int, N)
	for i := 0; i < N; i++ {
		var p int
		fmt.Scan(&p)
		l[i] = p
	}
	sort.Sort(sort.IntSlice(l))
	total := 0
	for i := 0; i < K; i++ {
		total = total + l[i]
	}
	fmt.Println(total)
}
