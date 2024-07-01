package main

import "fmt"

func diff(a, b int) int {
	if a > b {
		return a - b
	}
	return b - a
}

func solve(xs, ys, hs []int) (int, int, int) {
	for cx := 0; cx <= 100; cx++ {
	NEXT:
		for cy := 0; cy <= 100; cy++ {
			h := -1
			for i := range xs {
				if hs[i] <= 0 {
					continue
				}
				H := hs[i] + diff(xs[i], cx) + diff(ys[i], cy)
				if h == -1 {
					h = H
				} else if h != H {
					continue NEXT
				}
			}
			return cx, cy, h
		}
	}
	return -1, -1, -1
}

func main() {
	var n int
	fmt.Scan(&n)
	xs := make([]int, n)
	ys := make([]int, n)
	hs := make([]int, n)
	for i := range xs {
		fmt.Scan(&xs[i])
		fmt.Scan(&ys[i])
		fmt.Scan(&hs[i])
	}
	fmt.Println(solve(xs, ys, hs))
}
