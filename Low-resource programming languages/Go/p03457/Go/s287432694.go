package main

import (
	"fmt"
)

type plan struct {
	t, x, y int
}

func main() {
	n := 0
	fmt.Scan(&n)

	plans := make([]plan, n+1)
	for i := 1; i <= n; i++ { // スタート地点(0, 0)を含めてみました
		fmt.Scan(&plans[i].t, &plans[i].x, &plans[i].y)
	}

	for i, p := range plans {
		if i == 0 {
			continue
		}

		diffT := p.t - plans[i-1].t
		distance := abs(p.x-plans[i-1].x) + abs(p.y-plans[i-1].y)
		if diffT%2 != (distance)%2 || diffT < (distance) {
			fmt.Println("No")
			return
		}
	}

	fmt.Println("Yes")
}

func abs(n int) int {
	if n < 0 {
		return -n
	}
	return n
}
