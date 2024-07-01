package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	m := make(map[int]int)
	for x := 1; x <= 100; x++ {
		for y := 1; y <= 100; y++ {
			for z := 1; z <= 100; z++ {
				r := x*x + y*y + z*z + x*y + y*z + z*x
				if r <= n {
					m[r]++
				}
			}
		}
	}
	for i := 1; i <= n; i++ {
		if cnt, ok := m[i]; ok {
			fmt.Println(cnt)
		} else {
			fmt.Println(0)
		}
	}
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}
