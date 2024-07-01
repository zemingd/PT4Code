package main

import "fmt"

const inf = 1 << 60

func chmin(a *int, b int) {
	if *a > b {
		*a = b
	}
}

func main() {
	var n int
	var s string
	fmt.Scan(&n, &s)

	cw := make([]int, n+1)
	ce := make([]int, n+1)
	for i := 0; i < n; i++ {
		cw[i+1] = cw[i]
		ce[i+1] = ce[i]
		if s[i] == 'W' {
			cw[i+1]++
		} else {
			ce[i+1]++
		}
	}

	minCost := inf
	for i := 0; i < n; i++ {
		cost := 0
		cost += cw[i] - cw[0]
		cost += ce[n] - ce[i+1]
		chmin(&minCost, cost)
	}
	fmt.Println(minCost)
}
