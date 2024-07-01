package main

import "fmt"

var xl, yl, hl []int

func main() {
	var n, xi, yi, hi int
	fmt.Scan(&n)
	xl = make([]int, n)
	yl = make([]int, n)
	hl = make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scanf("%d %d %d", &xi, &yi, &hi)
		xl[i] = xi
		yl[i] = yi
		hl[i] = hi
	}

	for x := 0; x <= 100; x++ {
		for y := 0; y <= 100; y++ {
			h := 0
			j := 0
			for i := 0; ; i++ {
				if hl[i] > 0 {
					h = hl[i] + abs(x-xl[i]) + abs(y-yl[i])
					j = i
					break
				}
			}
			for i := j; i < n; i++ {
				if hl[i] != max(h-abs(x-xl[i])-abs(y-yl[i]), 0) {
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
