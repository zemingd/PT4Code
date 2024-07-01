package main

import "fmt"

func abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}
func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func main() {
	var n int
	fmt.Scan(&n)
	xs := make([]int, n)
	ys := make([]int, n)
	hs := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&xs[i], &ys[i], &hs[i])
	}

	check := func(cx, cy int) int {
		ch := -1
		for i := 0; i < n; i++ {
			if hs[i] != 0 {
				ch = hs[i] + abs(xs[i]-cx) + abs(ys[i]-cy)
			}
		}

		for i := 0; i < n; i++ {
			h := max(ch-abs(xs[i]-cx)-abs(ys[i]-cy), 0)
			if h != hs[i] {
				return -1
			}
		}
		return ch
	}

	for cx := 0; cx <= 100; cx++ {
		for cy := 0; cy <= 100; cy++ {
			ch := check(cx, cy)
			if ch != -1 {
				fmt.Println(cx, cy, ch)
			}
		}
	}
}
