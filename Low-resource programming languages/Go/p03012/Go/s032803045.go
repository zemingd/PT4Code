package main

import "fmt"

func abs(n int) int {
	if n < 0 {
		return -n
	}
	return n
}

func main() {
	var n int
	fmt.Scan(&n)
	w := make([]int, n)
	for i := range w {
		fmt.Scan(&w[i])
	}
	min := 10001
	for i := 1; i < n; i++ {
		var f, l int
		for _, v := range w[:i] {
			f += v
		}
		for _, v := range w[i:] {
			l += v
		}
		if abs(f-l) < min {
			min = abs(f - l)
		}
	}
	fmt.Println(min)
}
