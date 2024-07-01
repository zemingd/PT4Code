package main

import (
	"fmt"
)

func main() {
	var n int
	var s string
	fmt.Scan(&n, &s)
	e := make([]int, n)
	w := make([]int, n)
	for i, v := range s {
		if v == 'E' {
			e[i] = 1
		} else {
			w[i] = 1
		}
	}
	// e, wがそれぞれその場所で何個変わるか
	for i := 1; i < n; i++ {
		w[i] += w[i-1]
		e[n-i-1] += e[n-i]

	}
	m := 9999999999
	m = min(m, e[0])
	for i := 1; i < n-1; i++ {
		//fmt.Println(e[i+1] + w[i-1])
		m = min(m, e[i+1]+w[i-1])
	}
	m = min(m, w[n-1-1])
	fmt.Println(m)
}

func min(a, b int) int {
	if b < a {
		return b
	}
	return a
}