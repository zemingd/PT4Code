package main

import (
	"fmt"
)

func main() {
	var n, t int
	fmt.Scan(&n, &t)

	cl := make([]int, n)
	tl := make([]int, n)
	for i := 0; i < n; i++ {
		var cn, tn int
		fmt.Scan(&cn, &tn)
		cl[i] = cn
		tl[i] = tn
	}

	tle := true
	minIdx := 0
	for i := 0; i < n; i++ {
		if tl[i] <= t {
			tle = false
			if cl[i] < cl[minIdx] {
				minIdx = i
			}
		}
	}

	if tle {
		fmt.Println("TLE")
	} else {
		fmt.Println(cl[minIdx])
	}
}