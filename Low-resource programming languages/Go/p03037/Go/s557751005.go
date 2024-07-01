package main

import (
	"fmt"
	"sort"
)

func main() {
	var n, m int
	fmt.Scan(&n, &m)

	gateL := make([]int, m)
	gateR := make([]int, m)

	for i := 0; i < m; i++ {
		fmt.Scan(&gateL[i], &gateR[i])
	}

	sort.Ints(gateL)
	sort.Ints(gateR)

	maxL := gateL[m-1]
	minR := gateR[0]

	if minR < maxL {
		fmt.Println(0)
		return
	}

	fmt.Println(minR - maxL + 1)
}
