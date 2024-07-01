package main

import (
	"fmt"
)

func main() {
	routes := map[int]bool{}
	obs := map[int]int{}
	var n, m int
	fmt.Scan(&n, &m)
	for i := 1; i <= n; i++ {
		var h int
		fmt.Scan(&h)
		obs[i] = h
	}
	for i := 0; i < m; i++ {
		var a, b int
		fmt.Scan(&a, &b)
		if obs[a] > obs[b] {
			routes[b] = false
		} else if obs[a] == obs[b] {
			routes[a] = false
			routes[b] = false
		} else {
			routes[a] = false
		}
	}
	fmt.Println(n - len(routes))
}
