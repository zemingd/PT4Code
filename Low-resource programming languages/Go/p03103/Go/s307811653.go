package main

import (
	"fmt"
	"sort"
)

func main() {
	var n, m, a, b int
	fmt.Scan(&n, &m)

	as := make([]int, n)
	mp := make(map[int]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&a, &b)
		as[i] = a
		mp[a] = b
	}
	sort.Ints(as)

	money := 0
	for i := 0; i < n; i++ {
		if m-mp[as[i]] <= 0 {
			money += m * as[i]
			break
		} else {
			money += as[i] * mp[as[i]]
			m -= mp[as[i]]
		}
	}
	fmt.Println(money)
}
