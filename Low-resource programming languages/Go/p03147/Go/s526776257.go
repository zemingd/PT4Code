package main

import (
	"fmt"
)

func compare(a, b []int) bool {
	if len(a) != len(b) {
		return false
	}
	for i := 0; i < len(a); i++ {
		if a[i] != b[i] {
			return false
		}
	}
	return true
}

func main() {
	var n int
	fmt.Scan(&n)
	h := make([]int, n)
	for i := range h {
		fmt.Scan(&h[i])
	}

	cnt := 0
	g := make([]int, n)
	for !compare(g, h) {
		w := false
		for i := 0; i < n; i++ {
			if g[i] != h[i] {
				if !w {
					cnt++
					w = true
				}
				g[i]++
			} else {
				w = false
			}
		}
	}
	fmt.Println(cnt)
}
