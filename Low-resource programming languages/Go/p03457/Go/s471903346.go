package main

import (
	"fmt"
)

func main() {
	var N int
	fmt.Scan(&N)

	schedule := make([][]int, N)
	var t, x, y int
	for i := 0; i < N; i++ {
		fmt.Scan(&t, &x, &y)
		schedule[i] = []int{t, x, y}
	}

	fmt.Println(abc086c(N, schedule))
}

func abc086c(N int, schedule [][]int) string {
	var t, x, y, t1, x1, y1 int
	var buft, bufx, bufy int
	var res int
	for i := 0; i < N; i++ {
		t1 = schedule[i][0]
		x1 = schedule[i][1]
		y1 = schedule[i][2]
		buft = t1 - t
		bufx = x1 - x
		bufy = y1 - y
		res = buft - bufx - bufy
		if res >= 0 && res%2 == 0 {
			t1 = t
			x1 = x
			y1 = y
			continue
		} else {
			return "No"
		}
	}
	return "Yes"
}
