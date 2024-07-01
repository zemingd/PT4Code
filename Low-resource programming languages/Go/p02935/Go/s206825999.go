package main

import (
	"fmt"
	"sort"
)

func main() {
	var N int
	fmt.Scan(&N)
	v := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scan(&v[i])
	}
	sort.Ints(v)
	ans := float64(v[0])
	for i := 1; i < N; i++ {
		ans = (float64(ans) + float64(v[i])) / 2.0
	}
	fmt.Println(ans)
}
