package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	xl := make([]int, n)
	yl := make([]int, n)
	hl := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scanf("%d %d %d", &xl[i], &yl[i], &hl[i])
	}

	for x := 0; x <= 100; x++ {
		for y := 0; y <= 100; y++ {
			var h, j int
			for i := 0; ; i++ {
				if hl[i] > 0 {
					h = hl[i] + abs(xl[i]-x) + abs(yl[i]-y)
					j = i
					break
				}
			}
			for i := j; i < n; i++ {
				if hl[i] != max(h-abs(xl[i]-x)-abs(yl[i]-y), 0) {
					break
				}
				if i == n-1 {
					fmt.Println(x, y, h)
					return
				}
			}
		}
	}
}

func abs(x int) int {
	if x < 0 {
		x = -x
	}
	return x
}

func max(x, y int) int {
	if x < y {
		return y
	}
	return x
}
