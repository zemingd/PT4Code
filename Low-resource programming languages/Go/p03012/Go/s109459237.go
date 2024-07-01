package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	ws := make([]int, n)
	sum := 0
	for i := 0; i < n; i++ {
		fmt.Scan(&ws[i])
		sum += ws[i]
	}

	cal := sum / 2
	cnt1 := 0
	cnt2 := 0
	for _, w := range ws {
		if cnt1 < cal {
			cnt1 += w
		} else {
			cnt2 += w
		}
	}

	fmt.Print(cnt1 - cnt2)
}
