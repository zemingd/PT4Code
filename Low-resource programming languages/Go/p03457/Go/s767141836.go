package main

import (
	"fmt"
)

func main() {
	var n, t, tt, dt, x, tx, dx, y, ty, dy int
	res := true
	fmt.Scan(&n)
	for i := 0; i < n; i++ {
		fmt.Scan(&tt, &tx, &ty)
		if tx > x {
			dx = tx - x
		} else {
			dx = x - tx
		}
		if ty > y {
			dy = ty - y
		} else {
			dy = y - ty
		}
		dt = tt - t
		if dt < dy+dx || ((dt)%2 != (dy+dx)%2) {
			res = false
		}
		t, x, y = tt, tx, ty
	}

	if res {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
