package main

import (
	"fmt"
	"math"
)

func distance(x1, y1, x2, y2 int) int {
	return int(math.Abs(float64(x1-x2)) + math.Abs(float64(y1-y2)))
}

func main() {
	var n int
	fmt.Scan(&n)

	t, x, y := make([]int, n+1), make([]int, n+1), make([]int, n+1)
	for i := 1; i <= n; i++ {
		fmt.Scan(&t[i], &x[i], &y[i])
	}

	for i := 0; i < n; i++ {
		dist := distance(x[i], y[i], x[i+1], y[i+1])
		time := t[i+1] - t[i]
		if dist > time ||
			(dist%2 == 0 && time%2 == 1) ||
			(dist%2 == 1 && time%2 == 0) {
			fmt.Println("No")
			return
		}
	}
	fmt.Println("Yes")
}
