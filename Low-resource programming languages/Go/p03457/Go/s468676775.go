package main

import (
	"fmt"
)

func abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}

func main() {
	var n int
	fmt.Scan(&n)

	var t, x, y int
	var ny, nx, nt int
	for i := 0; i < n; i++ {
		fmt.Scan(&t, &x, &y)
		dt, dx, dy := t-nt, abs(nx-x), abs(ny-y)
		if dt-(dx+dy) < 0 || (dt-(dx+dy))%2 != 0 {
			fmt.Println("No")
			return
		}
		nx, ny, nt = x, y, t
	}
	fmt.Println("Yes")
}
