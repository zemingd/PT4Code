package main

import (
	"fmt"
)

func main() {
	var N, t, x, y int
	fmt.Scan(&N)

	ts := []int{0}
	xs := []int{0}
	ys := []int{0}
	for i := 0; i < N; i++ {
		fmt.Scan(&t)
		fmt.Scan(&x)
		fmt.Scan(&y)
		ts = append(ts, t)
		xs = append(xs, x)
		ys = append(ys, y)
	}

	for i := 1; i <= N; i++ {
		if !canMove(ts[i] - ts[i - 1], xs[i] - xs[i - 1], ys[i] - ys[i - 1]) {
			fmt.Println("No")
			return
		}
	}

	fmt.Println("Yes")
}

func canMove(turn, dx, dy int) bool {
	if turn % 2 == 0 {
		return abs(dx + dy) <= turn && abs(dx + dy) % 2 == 0
	} else {
		return abs(dx + dy) <= turn && abs(dx + dy) % 2 == 1
	}
}

func abs(x int) int {
	if x < 0 {
		return -1 * x
	} else {
		return x
	}
}