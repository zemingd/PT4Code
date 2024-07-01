package main

import (
	"fmt"
	"sort"
)

func main() {
	var N, K int
	fmt.Scan(&N, &K)
	a := make([]int, N)
	for i := range a {
		fmt.Scan(&a[i])
	}
	m := make(map[int]int)
	for _, v := range a {
		m[v]++
	}
	cnt := 0
	if len(m) > K {
		va := make([]int, len(m))
		for _, v := range m {
			va = append(va, v)
		}
		sort.Ints(va)
		for i := 0; i < len(va)-K; i++ {
			cnt += va[i]
		}
	}
	fmt.Println(cnt)
}
