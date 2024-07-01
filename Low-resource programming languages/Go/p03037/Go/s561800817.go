package main

import "fmt"

type gate struct {
	l, r int
}

func main() {
	var n, m int
	fmt.Scan(&n, &m)

	gates := make([]gate, m)
	for i := range gates {
		fmt.Scan(&gates[i].l, &gates[i].r)
	}

	maxL, minR := 0, n
	for _, g := range gates {
		maxL = max(maxL, g.l)
		minR = min(minR, g.r)
	}

	fmt.Println(minR - maxL + 1)
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
