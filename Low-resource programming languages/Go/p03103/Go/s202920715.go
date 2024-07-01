package main

import (
	"fmt"
	"sort"
)

func main() {
	var N, M int
	ls := [][]int{}

	fmt.Scan(&N, &M)

	for i := 0; i < N; i++ {
		var s, t int
		fmt.Scan(&s, &t)
		ls = append(ls, []int{s, t})
	}
	sort.Slice(ls, func(i, j int) bool { return ls[i][0] < ls[j][0] })

	ans := 0
	count := 0
	for i := 0; i < N; i++ {
		//ls[i][0]: value, ls[i][1]: num
		if ls[i][1] < M-count {
			count += ls[i][1]
			ans += ls[i][0] * ls[i][1]
		} else {
			ans += ls[i][0] * (M - count)
			break
		}
	}

	fmt.Println(ans)
}
