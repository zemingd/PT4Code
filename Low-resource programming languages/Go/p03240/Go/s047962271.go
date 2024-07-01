package main

import "fmt"

type point struct {
	x int
	y int
	h int
}

func abs(n int) int {
	if n < 0 {
		return -n
	}
	return n
}

func max(a, b int) int {
	if a < b {
		return b
	}
	return a
}

func main() {
	var n int
	fmt.Scan(&n)
	ps := make([]point, n)
	for i := range ps {
		fmt.Scan(&ps[i].x, &ps[i].y, &ps[i].h)
	}

	for ch := 1; ; ch++ {
		for cx := 0; cx <= 100; cx++ {
		L:
			for cy := 0; cy <= 100; cy++ {
				for _, p := range ps {
					if p.h != max(ch-abs(p.x-cx)-abs(p.y-cy), 0) {
						continue L
					}
				}
				fmt.Println(cx, cy, ch)
				return
			}
		}
	}
}
