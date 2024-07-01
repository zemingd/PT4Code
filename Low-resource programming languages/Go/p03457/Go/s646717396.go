package main

import "fmt"

func abs(a int) int {
	if a > 0 {
		return a
	}
	return -a
}

func dist(x0, y0, x1, y1 int) int {
	return abs(x0-x1) + abs(y0-y1)
}

func main() {
	var n int
	fmt.Scan(&n)
	ts := make([]int, n+1)
	xs := make([]int, n+1)
	ys := make([]int, n+1)
	ts[0] = 0
	xs[0] = 0
	ys[0] = 0
	for i := 1; i < n+1; i++ {
		fmt.Scan(&ts[i], &xs[i], &ys[i])
	}

	for i := 0; i < n; i++ {
		dist := dist(xs[i], ys[i], xs[i+1], ys[i+1])
		dt := ts[i+1] - ts[i]
		if dist > dt || (dt-dist)%2 != 0 {
			fmt.Println("No")
			return
		}
	}
	fmt.Println("Yes")
}
